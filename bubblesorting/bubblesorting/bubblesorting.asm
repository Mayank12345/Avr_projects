/*
 * bubblesorting.asm
 *
 *  Created: 05-09-2018 01:08:25
 *   Author: DESD
 */ 


 .include "m128def.inc"
 .dseg
 .org 0x100
 .cseg 
 .org 0x00

 
 ldi r31,0x0A

 superloop:
 ldi r26,0x01
 ldi r27,0x01

 ldi r28,0x01
 ldi r29,0x01
 ldi r18,0x09
 loop:
 ld r16,x+
 ld r17,x

 cp r16,r17
 brge swape
 inc r28
 dec r18
 brge loop
 dec r31
 brne superloop
 jmp end


 swape:
 st y+,r17
 st y,r16
 dec r18
 brge loop
 dec r31
 brne superloop
 jmp end

 end:
 rjmp end



