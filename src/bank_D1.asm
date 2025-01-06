
; bankcross from $D0

warnpc $D1B62A
org $D1B62A


Music_EmptyCrateria:
check bankcross off
incbin "../data/Music_EmptyCrateria.bin" ; $541C bytes
check bankcross on
