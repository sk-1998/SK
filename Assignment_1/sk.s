	.cpu cortex-m0plus
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.code	16
	.file	"stats.c"
	.section	.rodata
	.align	2
.LC2:
	.ascii	"\012 The Given array is --> \000"
	.align	2
.LC4:
	.ascii	"\012 The array After Sorting is --> \000"
	.align	2
.LC0:
	.byte	34
	.byte	-55
	.byte	-66
	.byte	-102
	.byte	8
	.byte	-62
	.byte	2
	.byte	6
	.byte	114
	.byte	88
	.byte	45
	.byte	76
	.byte	123
	.byte	87
	.byte	25
	.byte	23
	.byte	-56
	.byte	122
	.byte	-106
	.byte	90
	.byte	92
	.byte	87
	.byte	-79
	.byte	-12
	.byte	-55
	.byte	6
	.byte	12
	.byte	60
	.byte	8
	.byte	2
	.byte	5
	.byte	67
	.byte	7
	.byte	87
	.byte	-6
	.byte	-26
	.byte	99
	.byte	3
	.byte	100
	.byte	90
	.text
	.align	2
	.global	main
	.code	16
	.thumb_func
	.type	main, %function
main:
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	mov	r2, r7
	ldr	r3, .L2
	mov	r1, r2
	mov	r2, r3
	mov	r3, #40
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy
	mov	r3, #0
	str	r3, [r7, #52]
	mov	r3, #0
	str	r3, [r7, #48]
	mov	r3, #0
	str	r3, [r7, #44]
	mov	r3, #0
	str	r3, [r7, #40]
	ldr	r3, .L2+4
	mov	r0, r3
	bl	printf
	mov	r3, r7
	mov	r0, r3
	mov	r1, #40
	bl	print_array
	mov	r3, r7
	mov	r0, r3
	mov	r1, #40
	bl	find_mean
	mov	r3, r0
	str	r3, [r7, #52]
	mov	r3, r7
	mov	r0, r3
	mov	r1, #40
	bl	find_maximum
	mov	r3, r0
	str	r3, [r7, #44]
	mov	r3, r7
	mov	r0, r3
	mov	r1, #40
	bl	find_minimum
	mov	r3, r0
	str	r3, [r7, #40]
	mov	r3, r7
	mov	r0, r3
	mov	r1, #40
	bl	find_median
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r0, [r7, #52]
	ldr	r1, [r7, #48]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	bl	print_statistics
	mov	r3, r7
	mov	r0, r3
	mov	r1, #40
	bl	sort_array
	ldr	r3, .L2+8
	mov	r0, r3
	bl	printf
	mov	r3, r7
	mov	r0, r3
	mov	r1, #40
	bl	print_array
	mov	sp, r7
	add	sp, sp, #56
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	.LC0
	.word	.LC2
	.word	.LC4
	.size	main, .-main
	.global	__aeabi_idiv
	.align	2
	.global	find_mean
	.code	16
	.thumb_func
	.type	find_mean, %function
find_mean:
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	mov	r3, #0
	str	r3, [r7, #12]
	mov	r3, #0
	str	r3, [r7, #8]
	mov	r3, #0
	str	r3, [r7, #12]
	b	.L5
.L6:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, #1
	str	r3, [r7, #12]
.L5:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L6
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.size	find_mean, .-find_mean
	.align	2
	.global	find_maximum
	.code	16
	.thumb_func
	.type	find_maximum, %function
find_maximum:
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	mov	r3, #0
	str	r3, [r7, #12]
	mov	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	add	r3, r3, #1
	str	r3, [r7, #8]
	b	.L9
.L11:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]
	sub	r2, r3, #0
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ble	.L10
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]
	str	r3, [r7, #12]
.L10:
	ldr	r3, [r7, #8]
	add	r3, r3, #1
	str	r3, [r7, #8]
.L9:
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L11
	ldr	r3, [r7, #12]
	mov	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.size	find_maximum, .-find_maximum
	.align	2
	.global	find_minimum
	.code	16
	.thumb_func
	.type	find_minimum, %function
find_minimum:
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	mov	r3, #0
	str	r3, [r7, #12]
	mov	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	add	r3, r3, #1
	str	r3, [r7, #8]
	b	.L14
.L16:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]
	sub	r2, r3, #0
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bge	.L15
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]
	str	r3, [r7, #12]
.L15:
	ldr	r3, [r7, #8]
	add	r3, r3, #1
	str	r3, [r7, #8]
.L14:
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L16
	ldr	r3, [r7, #12]
	mov	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
	.size	find_minimum, .-find_minimum
	.align	2
	.global	find_median
	.code	16
	.thumb_func
	.type	find_median, %function
find_median:
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	mov	r3, #0
	str	r3, [r7, #20]
	mov	r3, #0
	str	r3, [r7, #16]
	mov	r3, #0
	str	r3, [r7, #12]
	mov	r3, #0
	str	r3, [r7, #20]
	b	.L19
.L23:
	mov	r3, #0
	str	r3, [r7, #16]
	b	.L20
.L22:
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldrb	r2, [r3]
	ldr	r3, [r7, #16]
	add	r3, r3, #1
	ldr	r1, [r7, #4]
	add	r3, r1, r3
	ldrb	r3, [r3]
	cmp	r2, r3
	bls	.L21
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldr	r2, [r7, #16]
	add	r2, r2, #1
	ldr	r1, [r7, #4]
	add	r2, r1, r2
	ldrb	r2, [r2]
	strb	r2, [r3]
	ldr	r3, [r7, #16]
	add	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldr	r2, [r7, #12]
	uxtb	r2, r2
	strb	r2, [r3]
.L21:
	ldr	r3, [r7, #16]
	add	r3, r3, #1
	str	r3, [r7, #16]
.L20:
	ldr	r3, [r7]
	sub	r2, r3, #1
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L22
	ldr	r3, [r7, #20]
	add	r3, r3, #1
	str	r3, [r7, #20]
.L19:
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L23
	ldr	r3, [r7]
	ldr	r2, .L31
	and	r3, r2
	bpl	.L24
	sub	r3, r3, #1
	mov	r2, #2
	neg	r2, r2
	orr	r3, r2
	add	r3, r3, #1
.L24:
	cmp	r3, #1
	bne	.L25
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L26
	add	r3, r3, #1
.L26:
	asr	r3, r3, #1
	sub	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]
	b	.L27
.L25:
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L28
	add	r3, r3, #1
.L28:
	asr	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L29
	add	r3, r3, #1
.L29:
	asr	r3, r3, #1
	add	r3, r2, r3
	sub	r3, r3, #1
	cmp	r3, #0
	bge	.L30
	add	r3, r3, #1
.L30:
	asr	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]
.L27:
	mov	r0, r3
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
.L32:
	.align	2
.L31:
	.word	-2147483647
	.size	find_median, .-find_median
	.align	2
	.global	sort_array
	.code	16
	.thumb_func
	.type	sort_array, %function
sort_array:
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	mov	r3, #0
	str	r3, [r7, #20]
	mov	r3, #0
	str	r3, [r7, #16]
	mov	r3, #0
	str	r3, [r7, #12]
	mov	r3, #0
	str	r3, [r7, #20]
	b	.L34
.L38:
	mov	r3, #0
	str	r3, [r7, #16]
	b	.L35
.L37:
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldrb	r2, [r3]
	ldr	r3, [r7, #16]
	add	r3, r3, #1
	ldr	r1, [r7, #4]
	add	r3, r1, r3
	ldrb	r3, [r3]
	cmp	r2, r3
	bcs	.L36
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldr	r2, [r7, #16]
	add	r2, r2, #1
	ldr	r1, [r7, #4]
	add	r2, r1, r2
	ldrb	r2, [r2]
	strb	r2, [r3]
	ldr	r3, [r7, #16]
	add	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldr	r2, [r7, #12]
	uxtb	r2, r2
	strb	r2, [r3]
.L36:
	ldr	r3, [r7, #16]
	add	r3, r3, #1
	str	r3, [r7, #16]
.L35:
	ldr	r3, [r7]
	sub	r2, r3, #1
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L37
	ldr	r3, [r7, #20]
	add	r3, r3, #1
	str	r3, [r7, #20]
.L34:
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L38
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7, pc}
	.size	sort_array, .-sort_array
	.section	.rodata
	.align	2
.LC6:
	.ascii	"\012 The Minimum Number from the array is = %d\000"
	.align	2
.LC8:
	.ascii	"\012 The Maximum Number from the array is = %d\000"
	.align	2
.LC10:
	.ascii	"\012 The Mean of the given array is       = %d\000"
	.align	2
.LC12:
	.ascii	"\012 The Median of the given array is     = %d\000"
	.text
	.align	2
	.global	print_statistics
	.code	16
	.thumb_func
	.type	print_statistics, %function
print_statistics:
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, .L40
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	bl	printf
	ldr	r2, .L40+4
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	bl	printf
	ldr	r2, .L40+8
	ldr	r3, [r7, #12]
	mov	r0, r2
	mov	r1, r3
	bl	printf
	ldr	r2, .L40+12
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	printf
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L41:
	.align	2
.L40:
	.word	.LC6
	.word	.LC8
	.word	.LC10
	.word	.LC12
	.size	print_statistics, .-print_statistics
	.section	.rodata
	.align	2
.LC14:
	.ascii	"\012 \000"
	.align	2
.LC16:
	.ascii	"\011 \011 \011 \011 \011 %d \012\000"
	.text
	.align	2
	.global	print_array
	.code	16
	.thumb_func
	.type	print_array, %function
print_array:
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L45
	mov	r0, r3
	bl	puts
	mov	r3, #0
	str	r3, [r7, #12]
	b	.L43
.L44:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r2, r3
	ldrb	r3, [r3]
	mov	r2, r3
	ldr	r3, .L45+4
	mov	r0, r3
	mov	r1, r2
	bl	printf
	ldr	r3, [r7, #12]
	add	r3, r3, #1
	str	r3, [r7, #12]
.L43:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L44
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7, pc}
.L46:
	.align	2
.L45:
	.word	.LC14
	.word	.LC16
	.size	print_array, .-print_array
	.ident	"GCC: (15:4.9.3+svn231177-1) 4.9.3 20150529 (prerelease)"
