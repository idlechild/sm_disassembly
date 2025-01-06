
org $CF8000


SPC_Engine:
check bankcross off
incbin "../data/SPCEngine.bin" ; $E20C bytes
check bankcross on
