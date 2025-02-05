
@echo off

echo Creating FF file
python tools/ff_file.py ../SM.sfc

echo Patching FF file with asar
"tools/asar" --fix-checksum=off --no-title-check --symbols=wla --symbols-path=symbols.sym %* src/main.asm SM.sfc && echo Success!

PAUSE
