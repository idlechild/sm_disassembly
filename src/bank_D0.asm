
; bankcross from $CF

warnpc $D0E20D
org $D0E20D


Music_TitleSequence:
check bankcross off
incbin "../data/Music_TitleSequence.bin" ; $541C bytes
check bankcross on
