#include "intel.h"
INTEL_BEGIN
.local msg
.code32
.balign 0x100
    mov edx, msg
    //.byte 0xba, 0x0b, 0x01
    mov ah, 9
    int 0x21
    mov ah, 0x4c
    int 0x21
msg:
    .ascii "Hello World!"
    .byte 0x0d, 0x0a, '$'
INTEL_END
