
@echo off

echo Extracting assets from original ROM
python tools/rip_assets.py "../Super Metroid.sfc" -o ../data || PAUSE
