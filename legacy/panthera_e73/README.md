## Razer Panthera PCB (E73-2G4M08S1C)

<img src="pcb.png" />

Drop in replacement for the Razer Panthera's PCB, with on-board [Tag-Connect](https://www.tag-connect.com/) connector, and USB-C connector (use 0.8mm thickness if you want to use this).

### TODO in next revision
- [ ] Sound output IC?
- [ ] Define a protocol to identify specific boards for GPIO mapping

### BOM

| Part type  | Part number            | Quantity | Cost per individual item                                     |
|------------|------------------------|----------|--------------------------------------------------------------|
| MCU Module | E73-2G4M08S1C          | 1        | [$4.39](https://www.aliexpress.com/item/32906661666.html)    |
| LDO        | MIC5219-3.3YM5         | 1        | [$0.10](https://www.ebay.com/sch/i.html?_nkw=MIC5219-3.3YM5) |
| Diode      | PESD12VL1BA,115        | 1        | [$0.05](https://lcsc.com/search?q=C38558)                    |
| Diode      | PESD5V0L1BA,115        | 2        | [$0.04](https://lcsc.com/search?q=C85380)                    |
| Pin header | Generic 0.1" 2x10 male | 2        | [$0.05](https://lcsc.com/search?q=C68234)                    |
| Pin header | Generic 0.1" 1x4 male  | 1        | [$0.02](https://lcsc.com/search?q=C358686)                   |
| Connector  | JST B5B-XH-AM          | 3        | [$0.10](https://lcsc.com/search?q=C161872)                   |
| Connector  | JST B4B-XH-AM          | 1        | [$0.08](https://lcsc.com/search?q=C161871)                   |
| Connector  | JST B3B-XH-AM          | 2        | [$0.07](https://lcsc.com/search?q=C161870)                   |
| Resistor   | 0603 10kΩ              | 1        | ~$0                                                          |
| Resistor   | 0603 5.1kΩ             | 2        | ~$0                                                          |
| Resistor   | 0603 100kΩ             | 1        | ~$0                                                          |

### Notes
 - R1 is unnecessary, unless you want to probe the touchpad's interrupt pin with a logic analyzer
 - R2 and R3 are needed only if you're using the USB-C connector
 - D1-3 are unnecessary, but recommended to protect from static discharge
