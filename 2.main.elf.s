
2.main.elf:     file format elf32-littlearm


Disassembly of section .text:

00008000 <foo>:
    8000:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8004:	e28db000 	add	fp, sp, #0
    8008:	e24dd00c 	sub	sp, sp, #12
    800c:	e3a03004 	mov	r3, #4
    8010:	e50b3008 	str	r3, [fp, #-8]
    8014:	e1a00000 	nop			; (mov r0, r0)
    8018:	e28bd000 	add	sp, fp, #0
    801c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8020:	e12fff1e 	bx	lr

Disassembly of section .data:

00018024 <intialized_global>:
   18024:	00000002 	andeq	r0, r0, r2

00018028 <static_initialized_global>:
   18028:	00000003 	andeq	r0, r0, r3

0001802c <static_initialized_local_variable.1>:
   1802c:	00000005 	andeq	r0, r0, r5

Disassembly of section .bss:

00018030 <uninitialized_global>:
	...

00018040 <static_uninitialized_global>:
   18040:	00000000 	andeq	r0, r0, r0

00018044 <static_uninitialized_local_variable.0>:
   18044:	00000000 	andeq	r0, r0, r0

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <_stack+0x1050d24>
   4:	35312820 	ldrcc	r2, [r1, #-2080]!	; 0xfffff7e0
   8:	2e30313a 	mrccs	1, 1, r3, cr0, cr10, {1}
   c:	30322d33 	eorscc	r2, r2, r3, lsr sp
  10:	302e3132 	eorcc	r3, lr, r2, lsr r1
  14:	29342d37 	ldmdbcs	r4!, {r0, r1, r2, r4, r5, r8, sl, fp, sp}
  18:	2e303120 	rsfcssp	f3, f0, f0
  1c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  20:	31323032 	teqcc	r2, r2, lsr r0
  24:	31323630 	teqcc	r2, r0, lsr r6
  28:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  2c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  30:	Address 0x0000000000000030 is out of bounds.


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

