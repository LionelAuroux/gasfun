.macro write from=0, to=255
    .set v, \from
    .set max, (\to - \from) + 1
    .rept max
._\\v:
        .byte v
        .set v, v + 1
    .endr
.endm

write 0, 255
