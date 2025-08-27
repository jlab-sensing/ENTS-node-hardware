# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

- Added i2c breakout board ([#66](i66), [#67](i67), [#68](i68))
- Updated battery board to 5-pin JST ([#71](i71), [#74](i74))

[i66]: https://github.com/jlab-sensing/ENTS-node-hardware/issues/66
[i67]: https://github.com/jlab-sensing/ENTS-node-hardware/issues/67
[i68]: https://github.com/jlab-sensing/ENTS-node-hardware/issues/68
[i71]: https://github.com/jlab-sensing/ENTS-node-hardware/issues/71
[i74]: https://github.com/jlab-sensing/ENTS-node-hardware/issues/74

## [2.2.3] - 2024-12-04

### Added

- Added pinout for D+/D- for debugging ([#59](i59))
- Added RTS and DTR for automatic bootloader ([#58](i58))
- Add battery breakout board ([#55](i55))

### Updated

- Replaced Rsense with header for THT resistor ([#60](i60))
- Updated switch configuration for battery board ([#57](i57))

[i55]: https://github.com/jlab-sensing/ENTS-node-hardware/issues/55
[i57]: https://github.com/jlab-sensing/ENTS-node-hardware/issues/57
[i58]: https://github.com/jlab-sensing/ENTS-node-hardware/issues/58
[i59]: https://github.com/jlab-sensing/ENTS-node-hardware/issues/58
[i60]: https://github.com/jlab-sensing/ENTS-node-hardware/issues/60

## [2.2.2] - 2024-08-14

### Updated

- Fixed footprint for RN1 ([#45](i45))
- Footprint of power switch to include orientation ([#45](i45))

### Removed

- Filtering capacitors C2, C3 ([#44](i44))

[i44]: https://github.com/jlab-sensing/soil_power_sensor/issues/44
[i45]: https://github.com/jlab-sensing/soil_power_sensor/issues/45
[i46]: https://github.com/jlab-sensing/soil_power_sensor/issues/46

## [2.2.1] - 2024-07-26

### Added

- Power switch in place of jumpers ([#35](i35))
- 4 pin 1mm JST SH connector for external i2c sensors based on the Adafruit STEMMA QT standard ([#29](i29))
- microSD card slot ([#41](i41))
- Second FRAM IC position

### Updated

- ESP32 UART terminal to a 4-pin header ([#38](i38))
- Battery connector to 4xAAA with case from Keystone ([#36](i36))
- FRAM footprint for compatibility with alternative IC (MB85RC1MT)
- Doubled trace with for power (0.4mm)

[i29]: https://github.com/jlab-sensing/soil_power_sensor/issues/29
[i35]: https://github.com/jlab-sensing/soil_power_sensor/issues/35
[i36]: https://github.com/jlab-sensing/soil_power_sensor/issues/36
[i38]: https://github.com/jlab-sensing/soil_power_sensor/issues/38
[i41]: https://github.com/jlab-sensing/soil_power_sensor/issues/41

## [2.2.0] - 2024-03-08

> Updated to KiCAD 8.0 in this release.

### Added

- RF shield over analog components
- Screw mounting holes with GND connection
- Hardware UART to SDI12 converter
- Added test point for hand soldering Vcc to positive terminal on Wio-E5
- Buttons for EN and BOOT pins for ESP32

### Updated

- ESP32-C3-MINI-N1 to ESP32-C3-WROOM-02-N4
- Updated screw terminal to 5 channel from Phoenix
- Updated SDI12 terminal to 3 channel from Phoenix

### Removed

- Through hole mount for Rsense

## [2.1.0] - 2023-11-09

Migrated from Autodesk Eagle to KiCAD

### Added

- Test points for supply rails (#7)
- Connection from INA296 Vcc to STM32 GPIO (#12)
- Header for USB Serial/JTAG controller on ESP32
- Added header for Rsense
- Added xfer equations on schematic and PCB
- Library devices
    - WIO-E5_MINI
    - ADS1219
    - FM24CL16B
    - ARM10_DEBUG

### Changed

- Replaced Wio-E5 with daughter board equivalent, the Wio-E5 mini (#2)
- Debug headers to the ARM10 connector (#3)
- Updated ADC from MAX11208 to ADS1219 (#10)
- Replaced LM27761 with TSP60400 (#4)
- Resistor values for voltage/current channels (#5)
- Communication between ESP32 and STM32 to I2C
- ESP32_EN signal to a pull-up configuration
- Replaced Rsense header with 0603 pad
- Connected REF203 EN pin to POWERDOWN signal
- Update low pass filter cutoff frequency
- Library device
    - AAA55
    - MAX9944
    - THS4532
    - INA296

### Depreciated

N/A

### Removed

- Board wide ground planes (#11)
- Physical reset switch for ESP32

### Security

N/A


## [2.0.0-a.6] - 2023-05-10

### Schematic

- Updated current gain resistors


## [2.0.0-a.5] - 2023-05-02

### Schematic

- Removed buffer on negative rail and replaced MAX9944 with 
- Added values to parts missing VALUE text
- Renumbered all parts
- Remove power test points
- Added MPN to all passive components

### Board

- Iterate on board design
- Added UC Santa Cruz Logo
- Removed tValues
- Generated gerber files
- Updated low pass filter capacitance values
- Replaced 100nF capacitors with 0.1uF
- Replaced 250k resistors to 249K based on availability
- Replaced 0804 footprints with 0603

### Library

- Added MAX9943 device
- Added prefix for -3V3
- Updated LM27751 footprint
- Updated MAX9943 footprints

### Other

- Added source files for logos


## [2.0.0-a.4] - 2023-04-26

### Schematic

- Fixed duplicated naming for NRST net between STM32 and ESP32
- Fixed name of FSA2466 symbol
- Renamed differential pair nets to allow for differential pair routing
- Replaced Vcc on STM32 JTAG with +3V3

- Added experiment drawings

### Library

- Updated MAX9944 footprint
- Updated AAA55 Footprint

### Board

- Created initial layout for board


## [2.0.0-a.3] - 2023-04-11

### Schematic

- Removed jumper for 4th AAA battery cell
- Added document title and revision to frames
- Added TVS diode for both USB signal channels
- Fixed in-situ load connections
- Replaced FDA LTC6362 with THS4532IPW
- Moved multiplexer to analog signal side to reduce the number of ADCs as a cost saving measure
- Replaced low current main LDO TPS7A2033 with 1A TLV1117LV

- Replaced REF1933 with REF2033 due to availability
- Replaced TPS60403 with LM27761 due to availability

- Connected ESP32 EN pin to STM32 PA9 pin
- Connected STM32 PC0 to THS4532 PD pin
- Connected STM32 PC1 to EN on REF2033 and LM27761

### Library

- Verified footprints of all devices and fixed where applicable
- Added devices to Soil Power Sensor Library
	- TPD2E2U06DCKR
	- THS4532IPW
	- REF2033
	- LM27761
- Removed devices from Soil Power Sensor Library
	- MAX9918
	- LTC6362
	- STM32 Devices
	- Random oscillators
- Moved Wio-E5 to Soil Power Sensor library
- Defined attributes in CONTRIBUTING.md for efficient BOM generation


## [2.0.0-a.2] - 2023-03-14

### Added

- Added in-situ Rload
- Added connection for TEROS-12
- Added JTAG connection for STM32
- Added voltage monitoring circuit
- Added test points
- Added LP filter on signals leading to ADC
- Added FSA2466UMX to library
- Added Wifi Module (ESP32-C3)
- Added ESP32-C3-MINI-1-N4 to library
- Added TLV1117LV33DCYR to library
- Added battery with selectables jumpers
- Added AAA55
- Added Wio E5 and USB
- Added device MI0805K601R-10
- Added device MODULE_LORA_E5
- Added LT234XD-R device

### Fixed

- Fixed voltage and current connectors
- Fixed ADC interface with mux

### Changed

- Updated JTAG connector for ESP32
- Updated TLV1117LV33DCYR in library
- Moved power to seperate sheet

### Removed

None


## [2.0.0-a.1] - 2023-02-02

Initial design for Soil Power Sensor v2
