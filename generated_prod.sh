#!/bin/bash

ROOT_DIR=$(dirname "$(realpath "$0")")
PROJECT_DIR="$ROOT_DIR/hardware"

# Set your project paths
PCB_FILE="$PROJECT_DIR/Soil Power Sensor.kicad_pcb"
SCHEMATIC_FILE="$PROJECT_DIR/Soil Power Sensor.kicad_sch"
BOM_FILE="$PROJECT_DIR/Soil Power Sensor.csv"
POS_FILE="$PROJECT_DIR/Soil Power Sensor-top-pos.csv"

PLOTS_DIR="$PROJECT_DIR/plots"
mkdir -p "$PLOTS_DIR"

# Run DRC
kicad-cli sch erc "$SCHEMATIC_FILE"

# Run ERC
kicad-cli pcb drc "$PCB_FILE"

# Generate Gerber files
kicad-cli pcb export gerbers --board-plot-params --output "$PLOTS_DIR" "$PCB_FILE"

# Generate Drill files
kicad-cli pcb export drill --generate-map --map-format gerberx2 --output "$PLOTS_DIR" "$PCB_FILE"

# Zip production files
zip -r "$PROJECT_DIR/plots.zip" "$PLOTS_DIR"

# Generate Bill of Materials (BOM)
kicad-cli sch export bom --preset "JLCPCB" --output "$BOM_FILE" "$SCHEMATIC_FILE"

# Generate Pick and Place files
kicad-cli pcb export pos --format csv --units mm --side front --output "$POS_FILE" "$PCB_FILE"
sed -i 's/Ref/Designator/g' "$POS_FILE"
sed -i 's/PosX/Mid X/g' "$POS_FILE"
sed -i 's/PosY/Mid Y/g' "$POS_FILE"
sed -i 's/Rot/Rotation/g' "$POS_FILE"
sed -i 's/Side/Layer/g' "$POS_FILE"

echo "Generation complete!"
