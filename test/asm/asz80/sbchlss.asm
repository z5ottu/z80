;-------------------------------
;--     SBC HL ss             --
;-------------------------------

;-------------------------------
;--     SBC HL BC             --
;-------------------------------
;Check Carry In Works
;-------------------------------
sbchlss:

   call rst_reg
   
	ld	bc,#0H1234
	ld	hl,#0H2345

	ld		a,#0H00	; Force a borrow by doing 00-01
	ld		b,#0H01
	sub	b			

	sbc	hl,bc

	jp	c,	fail			

	ld	a,#0H10
	cp	l
	jp	nz,	fail

	ld	a,#0H11
	cp	h
	jp	nz,	fail

;-------------------------------
; Check a carry can be generated
;-------------------------------
	ld	a, #0H00			; make sure the carry bit is clear
	add	a
	
	ld	bc,#0H8005
	ld	hl,#0HA004

	sbc	hl,bc

	jp	nc,	fail			

	ld	a,#0H09
	cp	l
	jp	nz,	fail

	ld	a,#0H20
	cp	h
	jp	nz,	fail

;-------------------------------
; Check carry travels between bytes
;-------------------------------
	ld	a, #0H00			; make sure the carry bit is clear
	add	a
	
	ld	bc,#0H0080
	ld	hl,#0H00A0

	sbc	hl,bc

	jp	c,	fail			

	ld	a,#0H20
	cp	l
	jp	nz,	fail

	ld	a,#0H01
	cp	h
	jp	nz,	fail


;-------------------------------
;--     ADD HL DE             --
;-------------------------------
;Check Carry In Works
;-------------------------------
	ld	de,#0H2143
	ld	hl,#0H2345

	ld		a,#0H80	; Force a carry by doing 80+80
	add	a			

	sbc	hl,de

	jp	c,	fail			

	ld	a,#0H89
	cp	l
	jp	nz,	fail

	ld	a,#0H44
	cp	h
	jp	nz,	fail

;-------------------------------
; Check a carry can be generated
;-------------------------------
	ld	a, #0H00			; make sure the carry bit is clear
	add	a
	
	ld	de,#0H9003
	ld	hl,#0HA004

	sbc	hl,de

	jp	nc,	fail			

	ld	a,#0H07
	cp	l
	jp	nz,	fail

	ld	a,#0H30
	cp	h
	jp	nz,	fail

;-------------------------------
; Check carry travels between bytes
;-------------------------------
	ld	a, #0H00			; make sure the carry bit is clear
	add	a
	
	ld	de,#0H0190
	ld	hl,#0H00A0

	sbc	hl,de

	jp	c,	fail			

	ld	a,#0H30
	cp	l
	jp	nz,	fail

	ld	a,#0H02
	cp	h
	jp	nz,	fail

;-------------------------------
;--     ADD HL HL             --
;-------------------------------
;Check Carry In Works
;-------------------------------
	ld	hl,#0H4523

	ld		a,#0H80	; Force a carry by doing 80+80
	add	a			

	sbc	hl,hl

	jp	c,	fail			

	ld	a,#0H47
	cp	l
	jp	nz,	fail

	ld	a,#0H8A
	cp	h
	jp	nz,	fail

;-------------------------------
; Check a carry can be generated
;-------------------------------
	ld	a, #0H00			; make sure the carry bit is clear
	add	a
	
	ld	hl,#0HB006

	sbc	hl,hl

	jp	nc,	fail			

	ld	a,#0H0C
	cp	l
	jp	nz,	fail

	ld	a,#0H60
	cp	h
	jp	nz,	fail

;-------------------------------
; Check carry travels between bytes
;-------------------------------
	ld	a, #0H00			; make sure the carry bit is clear
	add	a
	
	ld	hl,#0H03C0

	sbc	hl,hl

	jp	c,	fail			

	ld	a,#0H80
	cp	l
	jp	nz,	fail

	ld	a,#0H07
	cp	h
	jp	nz,	fail

;-------------------------------
;--     ADD HL SP             --
;-------------------------------
;Check Carry In Works
;-------------------------------
	ld	sp,#0H4321
	ld	hl,#0H1122

	ld		a,#0H80	; Force a carry by doing 80+80
	add	a			

	sbc	hl,sp

	jp	c,	fail			

	ld	a,#0H44
	cp	l
	jp	nz,	fail

	ld	a,#0H54
	cp	h
	jp	nz,	fail

;-------------------------------
; Check a carry can be generated
;-------------------------------
	ld	a, #0H00			; make sure the carry bit is clear
	add	a

	ld	sp,#0HC005
	ld	hl,#0HA009

	sbc	hl,sp

	jp	nc,	fail			

	ld	a,#0H0E
	cp	l
	jp	nz,	fail

	ld	a,#0H60
	cp	h
	jp	nz,	fail

;-------------------------------
; Check carry travels between bytes
;-------------------------------
	ld	a, #0H00			; make sure the carry bit is clear
	add	a
	
	ld	sp,#0H02C0
	ld	hl,#0H0490

	sbc	hl,sp

	jp	c,	fail			

	ld	a,#0H50
	cp	l
	jp	nz,	fail

	ld	a,#0H07
	cp	h
	jp	nz,	fail
