#!/bin/sh

echo "Extracting assets from original ROM"
python3 tools/rip_assets.py "Super Metroid.sfc" -o data
