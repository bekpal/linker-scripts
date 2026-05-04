
bar.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <bar>:
   0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   4:	e28db000 	add	fp, sp, #0
   8:	e3a03014 	mov	r3, #20
   c:	e1a00003 	mov	r0, r3
  10:	e28bd000 	add	sp, fp, #0
  14:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  18:	e12fff1e 	bx	lr

Disassembly of section .data:

00000000 <a>:
   0:	00000064 	andeq	r0, r0, r4, rrx

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	3128203a 			; <UNDEFINED> instruction: 0x3128203a
   8:	30313a35 	eorscc	r3, r1, r5, lsr sl
   c:	322d332e 	eorcc	r3, sp, #-1207959552	; 0xb8000000
  10:	2e313230 	mrccs	2, 1, r3, cr1, cr0, {1}
  14:	342d3730 	strtcc	r3, [sp], #-1840	; 0xfffff8d0
  18:	30312029 	eorscc	r2, r1, r9, lsr #32
  1c:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
  20:	32303220 	eorscc	r3, r0, #32, 4
  24:	32363031 	eorscc	r3, r6, #49	; 0x31
  28:	72282031 	eorvc	r2, r8, #49	; 0x31
  2c:	61656c65 	cmnvs	r5, r5, ror #24
  30:	00296573 	eoreq	r6, r9, r3, ror r5

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002941 	andeq	r2, r0, r1, asr #18
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001f 	andeq	r0, r0, pc, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	; 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	011a0119 	tsteq	sl, r9, lsl r1
  28:	Address 0x0000000000000028 is out of bounds.

