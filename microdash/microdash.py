#!/usr/bin/env python3

import argparse
import cadquery as cq
import json
import math
import sys
from functools import lru_cache

sys.setrecursionlimit(10000)

width = 230
height = 145

border_button_inset_x = 17.5
border_button_inset_y = 12.5
home_button_additional_inset = 5

mount_inset = 6
mount_radius = 5.56 / 2

try:
    show_object
except NameError:
    show_object = None

@lru_cache
def board_step():
    return cq.importers.importStep("board.step")

@lru_cache
def kailh_switch_step():
    return cq.importers.importStep("models/PG1350.step")

@lru_cache
def kailh_socket_step():
    return cq.importers.importStep("../pool/3d_models/CPG135001S30.step")

@lru_cache
def kailh_keycap_step():
    return cq.importers.importStep("models/PG1350-keycap.step")

def board():
    global width, height
    s = board_step().translate(cq.Vector(-width/2, -height/2, -1.6))
    return s

def kailh_switch():
    s = kailh_switch_step().rotate(cq.Vector(0, 0, 0), cq.Vector(1, 0, 0), 90)
    s = s.rotate(cq.Vector(0, 0, 0), cq.Vector(0, 0, 1), -90)
    s = s.translate(cq.Vector(0, 0, 5.175))
    return s

def kailh_socket():
    s = kailh_socket_step().rotate(cq.Vector(0, 0, 0), cq.Vector(1, 0, 0), 90)
    s = s.translate(cq.Vector(5.0, -3.675, 1.8))
    return s

def kailh_keycap():
    s = kailh_keycap_step()
    s = s.translate(cq.Vector(0, 0, 5))
    return s

def button(position: cq.Vector, rotation: int):
    switch = kailh_switch().rotate(cq.Vector(0, 0, 0), cq.Vector(0, 0, 1), rotation)
    switch = switch.translate(position)

    socket = kailh_socket().rotate(cq.Vector(0, 0, 0), cq.Vector(0, 0, 1), rotation)
    socket = socket.translate(position)

    keycap = kailh_keycap().rotate(cq.Vector(0, 0, 0), cq.Vector(0, 0, 1), rotation)
    keycap = keycap.translate(position)

    a = cq.Assembly()
    a.add(switch, color=cq.Color(1, 1, 1, 1))
    a.add(keycap, color=cq.Color(.5, .5, .5, 1))
    a.add(socket, color=cq.Color(0, 0, 0, 1))
    return a

def rotate(x: float, y: float, angle: int) -> (float, float):
    r = math.sqrt(x*x + y*y)
    theta = math.atan2(y, x)
    d_theta = angle / 180 * math.pi

    return (r * math.cos(theta+d_theta), r * math.sin(theta + d_theta))

class CenterTracker(object):
    x = 0
    y = 0
    line_x = 0
    line_y = 0
    rotation = 0

    def __init__(self, rotation: int = None):
        if rotation is not None:
            self.rotation = rotation

    def rotate(self, x: float, y: float) -> (float, float):
        return (rotate(x, y, self.rotation))

    def push_raw(self, workplane: cq.Workplane, x: float, y: float) -> cq.Workplane:
        self.x += x
        self.y += y
        return workplane.center(x, y)

    def push(self, workplane: cq.Workplane, x: float, y: float) -> cq.Workplane:
        (x, y) = self.rotate(x, y)
        return self.push_raw(workplane, x, y)

    def push_line(self, workplane: cq.Workplane, x: float, y: float) -> cq.Workplane:
        (x, y) = self.rotate(x, y)
        self.line_x += x
        self.line_y += y
        return workplane.lineTo(x, y).center(x, y)

    def pop(self, workplane: cq.Workplane) -> cq.Workplane:
        wp = workplane.center(-self.x, -self.y)
        self.x = 0
        self.y = 0
        return wp

    def pop_line(self, workplane: cq.Workplane) -> cq.Workplane:
        wp = workplane.lineTo(-self.line_x, -self.line_y)
        wp = workplane.center(-self.line_x, -self.line_y)
        self.line_x = 0
        self.line_y = 0
        return wp.close()

class Button(object):
    def __init__(self, position: cq.Vector, rotation: int, led: bool = True):
        self.position = position
        self.rotation = rotation
        self.led = led

def button_bottom_cutout(parent: cq.Workplane, button: Button) -> cq.Workplane:
    ct = CenterTracker(button.rotation)
    x = ct.push_raw(parent, button.position.x, button.position.y)
    # Center hole: 3.40 mm nominal
    x = x.circle(3.2 / 2)

    # Side holes: 1.90 mm nominal, spaced 5.5mm from the center
    x = x.pushPoints([rotate(5.5, 0, button.rotation), rotate(-5.5, 0, button.rotation)])
    x = x.circle(1.65 / 2)

    # LED hole
    if button.led:
        led_hole_width = 5.3
        led_hole_height = 3.25
        led_ct = CenterTracker(button.rotation)
        x = led_ct.push(x, 0, 4.7)
        x = led_ct.push(x, led_hole_width / 2, led_hole_height / 2)
        x = led_ct.push_line(x, -led_hole_width, 0)
        x = led_ct.push_line(x, 0, -led_hole_height)
        x = led_ct.push_line(x, led_hole_width, 0)
        x = led_ct.pop_line(x)
        x = led_ct.pop(x)

    x = ct.push(x, 0, -5.90)

    solder_point_width = 1.65

    top_long_width = 4.5
    top_slope_width = 2.25
    top_short_width = 2.85

    bottom_long_width = 4.5- 0.65
    bottom_slope_width = 2.25
    bottom_short_width = 2.85 + 0.65

    slope_height = 2.15
    half_height = 4.7

    solder_point_height = 1.7
    expansion = 0.1

    x = ct.push(x, (9.55-5)/2, 0)
    x = ct.push(x, 0.025, 0.025)
    x = ct.push(x, solder_point_width, solder_point_height/2)

    if expansion != 0:
        x = ct.push(x, expansion, expansion)

    x = ct.push_line(x, -solder_point_width, 0)
    x = ct.push_line(x, 0, (half_height - solder_point_height) / 2)
    x = ct.push_line(x, -top_short_width, 0)
    x = ct.push_line(x, -top_slope_width, slope_height)

    x = ct.push_line(x, -top_long_width-2*expansion, 0)

    x = ct.push_line(x, 0, -(half_height-solder_point_height)/2)
    x = ct.push_line(x, -solder_point_width, 0)
    x = ct.push_line(x, 0, -solder_point_height-2*expansion)
    x = ct.push_line(x, solder_point_width, 0)
    x = ct.push_line(x, 0, -(half_height-solder_point_height)/2)

    x = ct.push_line(x, bottom_short_width, 0)
    x = ct.push_line(x, bottom_slope_width, -slope_height)
    x = ct.push_line(x, bottom_long_width+2*expansion, 0)

    x = ct.push_line(x, 0, (half_height-solder_point_height)/2)
    x = ct.push_line(x, solder_point_width, 0)
    x = ct.pop_line(x)

    x = ct.pop(x)
    return x

def button_top_cutout(parent: cq.Workplane, button: Button) -> cq.Workplane:
    ct = CenterTracker(button.rotation)
    x = ct.push_raw(parent, button.position.x, button.position.y)

    expansion = -0.05

    x = ct.push(x, 7.5 + expansion, 7.5 + expansion)
    x = ct.push_line(x, 0, -(15 + 2 * expansion))
    x = ct.push_line(x, -(15 + 2 * expansion), 0)
    x = ct.push_line(x, 0, 15 + 2 * expansion)
    x = ct.pop_line(x)
    x = ct.pop(x)
    return x

buttons = {
}

def add_button(name: str, location: (float, float), rotation: int) -> Button:
    button = Button(cq.Vector(location[0], location[1], 0), rotation)
    buttons[name] = button
    return button

def add_button_offset(name: str, anchor: Button, vector: (float, float), rotation: int) -> Button:
    position = (anchor.position.x + vector[0], anchor.position.y + vector[1])
    return add_button(name, position, rotation)

def add_button_relative(name: str, anchor: Button, vector: (float, float), rotation: int = 0) -> Button:
    base = (anchor.position.x, anchor.position.y)
    delta = rotate(vector[0], vector[1], anchor.rotation)
    return add_button(name, (base[0] + delta[0], base[1] + delta[1]), anchor.rotation + rotation)

right = add_button("right", (-20, 0), -30)
down = add_button_relative("down", right, (-22, 4))
left = add_button_relative("left", down, (-22, -4))
w = add_button_relative("w", down, (0, 22))

up = add_button_offset("up", right, (5, -35), -40)
up_left = add_button_relative("up_left", up, (-24, -4), 10)
up_right = add_button_relative("up_right", up, (24, -4), -10)

p1 = add_button("p1", (20, 0), 30)
p2 = add_button_relative("p2", p1, (22, 4))
p3 = add_button_relative("p3", p2, (22, -4))
p4 = add_button_relative("p4", p3, (22, -8))

k1 = add_button_relative("k1", p1, (0, -25))
k2 = add_button_relative("k2", p2, (0, -25))
k3 = add_button_relative("k3", p3, (0, -25))
k4 = add_button_relative("k4", p4, (0, -25))

start = add_button("start", (width / 2 - border_button_inset_x, height / 2 - border_button_inset_y), 0)
fn = add_button_relative("fn", start, (-20, 0))
home = add_button("home", (0, height / 2 - border_button_inset_y - home_button_additional_inset), 0)
home.led = False

def mounting_holes(parent: cq.Workplane) -> cq.Workplane:
    global mount_inset, mount_radius
    ct = CenterTracker()
    for x, y in [(1, 1), (-1, 1), (1, -1), (-1, -1)]:
        parent = ct.push(parent, x * (width / 2 - mount_inset), y * (height / 2 - mount_inset))
        parent = parent.circle(mount_radius)
        parent = ct.pop(parent)
    return parent

def cutout_impl(parent: cq.Workplane, cutouts) -> cq.Workplane:
    for name, description in cutouts.items():
        dimensions = description["dimensions"]
        for location in description["locations"]:
            # Locations are indexed from the bottom left corner, our origin is the middle.
            x = location[0] - width / 2
            y = location[1] - height / 2
            ct = CenterTracker()
            parent = ct.push(parent, x, y)
            parent = ct.push(parent, dimensions[0] / 2, dimensions[1] / 2)
            parent = ct.push_line(parent, 0, -dimensions[1])
            parent = ct.push_line(parent, -dimensions[0], 0)
            parent = ct.push_line(parent, 0, dimensions[1])
            parent = ct.pop_line(parent)
            parent = ct.pop(parent)
            parent = ct.pop(parent)
    return parent

def ic_cutouts(parent: cq.Workplane) -> cq.Workplane:
    cutouts = {
        "mcu": {
            "locations": [(115, 102.5)],
            "dimensions": (22, 18),
        },
        "io_extender": {
            "locations": [(115, 80), (115, 72), (115, 62), (115, 52)],
            "dimensions": (6.3, 6.3),
        },
        "usb_esd": {
            "locations": [(115.5, 133.25)],
            "dimensions": (2.5, 2),
        },
        "regulator": {
            "locations": [(131.1, 127.1)],
            "dimensions": (12, 12),
        },
        "i2c_pullup": {
            "locations": [(103.070, 135.040)],
            "dimensions": (3.5, 4.5),
        },
    }

    return cutout_impl(parent, cutouts)

def screen_cutout(parent: cq.Workplane) -> cq.Workplane:
    cutout = {
        "screen": {
            "locations": [(34.3, 132)],
            "dimensions": (40, 13.5),
        },
    }

    return cutout_impl(parent, cutout)

def usb_cutout(parent: cq.Workplane) -> cq.Workplane:
    cutout = {
        "usb": {
            "locations": [(115, 141.125)],
            "dimensions": (10.2, 7.75),
        },
    }

    return cutout_impl(parent, cutout)

@lru_cache
def top_plate() -> cq.Workplane:
    global width, height, buttons
    x = cq.Workplane("XY").rect(width, height)
    for name, location in buttons.items():
        x = button_top_cutout(x, location)
    return mounting_holes(x).extrude(3.0)

@lru_cache
def top_engrave() -> cq.Workplane:
    x = cq.Workplane("XY")
    x = screen_cutout(x)
    x = usb_cutout(x)
    return x.extrude(3.0)

@lru_cache
def bottom_plate() -> cq.Workplane:
    global width, height, buttons
    x = cq.Workplane("XY").rect(width, height)
    for name, location in buttons.items():
        x = button_bottom_cutout(x, location)
    x = ic_cutouts(x)
    x = screen_cutout(x)

    usb = usb_cutout(cq.Workplane("XY")).extrude(3.0)
    return mounting_holes(x).extrude(3.0).cut(usb)

for name, location in buttons.items():
    if show_object:
        b = button(location.position, location.rotation)
        show_object(b)

if show_object:
    show_object(cq.Assembly(board(), color=cq.Color(1, 1, 1, 1)))
    show_object(cq.Assembly(bottom_plate(), color=cq.Color(0, 1, 0, 0.25)))
    show_object(cq.Assembly(top_plate().translate(cq.Vector(0, 0, 3)), color=cq.Color(1, 0, 0, 0.25)))

parser = argparse.ArgumentParser()
parser.add_argument("--export", help="export dxf files", action="store_true")
parser.add_argument("--pcb-place", help="place PCB footprints", action="store_true")
args = parser.parse_args()

if args.export:
    test_button = Button(position=cq.Vector(0, 0, 0), rotation=0)
    test_coupon_top = button_top_cutout(cq.Workplane("XY").rect(20, 20), test_button).extrude(3)
    test_coupon_bottom = button_bottom_cutout(cq.Workplane("XY").rect(20, 20), test_button).extrude(3)
    cq.exporters.export(test_coupon_top.section(), "test_coupon_top.dxf")
    cq.exporters.export(test_coupon_bottom.section(), "test_coupon_bottom.dxf")

    top_export = top_plate().rotate(cq.Vector(0, 0, 0), cq.Vector(0, 0, 1), 90)
    top_engrave_export = top_engrave().rotate(cq.Vector(0, 0, 0), cq.Vector(0, 0, 1), 90)
    bottom_export = bottom_plate().rotate(cq.Vector(0, 0, 0), cq.Vector(0, 0, 1), 90)
    cq.exporters.export(top_export.section(), "top_plate.dxf")
    cq.exporters.export(top_engrave_export.section(), "top_engrave.dxf")
    cq.exporters.export(bottom_export.section(), "bottom_plate.dxf")

if args.pcb_place:
    block = json.load(open("top_block.json", "r"))
    button_uuids = {}

    screw_uuids = {}
    screw_locations = {
        "MP0": (mount_inset, mount_inset),
        "MP1": (width - mount_inset, mount_inset),
        "MP2": (width - mount_inset, height - mount_inset),
        "MP3": (mount_inset, height - mount_inset),
    }
    for uuid, component in block["components"].items():
        if "refdes" in component:
            if component["refdes"] in buttons.keys():
                button_uuids[uuid] = component["refdes"]
            elif component["refdes"] in screw_locations.keys():
                screw_uuids[uuid] = component["refdes"]

    if len(button_uuids) != len(buttons):
        missing = set(buttons.keys()) - set(button_uuids.values())
        missing_str = ", ".join(sorted(missing))
        print(f"warning: missing buttons: {missing_str}")

    if len(screw_uuids) != len(screw_locations):
        missing = set(screw_locations.keys()) - set(screw_uuids.values())
        missing_str = ",".join(sorted(missing))
        print(f"warning: missing mounting screws: {missing_str}")

    board_file = open("board.json", "r+")
    board_json = json.load(board_file)
    packages = board_json["packages"]
    for package_uuid, package in packages.items():
        component_uuid = package["component"]

        x = 0
        y = 0
        rotation = 0

        if component_uuid in button_uuids:
            button = buttons[button_uuids[component_uuid]]
            x = int((button.position.x + width / 2) * 1000000)
            y = int((button.position.y + height / 2) * 1000000)
            rotation = button.rotation
        elif component_uuid in screw_uuids:
            screw_location = screw_locations[screw_uuids[component_uuid]]
            x = int(screw_location[0] * 1000000)
            y = int(screw_location[1] * 1000000)
            rotation = 0
        else:
            continue

        package["placement"]["shift"] = [x, y]
        package["placement"]["angle"] = int((rotation % 360)/360 * 65536)
    board_file.seek(0)
    board_file.truncate(0)
    json.dump(board_json, board_file, indent=4)
