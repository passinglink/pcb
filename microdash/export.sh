./microdash.py --export
for x in export/*.dxf; do
  $(dirname $(realpath $(which inkscape)))/../share/inkscape/extensions/dxf_input.py $x > ${x%.dxf}.svg
done
