L_1:	ADDI	$t0, $zero, 5
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_2:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 4($gp)
L_3:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_4:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 8($gp)
L_5:	LW	$t0, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_6:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_7:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUBU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_8:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 12($gp)
L_9:	ADDI	$t0, $zero, 5
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_10:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 16($gp)
L_11:	LW	$t0, 16($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_12:	ADDI	$t0, $zero, 10
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_13:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t0, $t1
	BNE	$t2, $zero, L_17
L_14:	ADDI	$t0, $zero, 10
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_15:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_16:	J	L_17
L_17:	LW	$t0, 16($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_18:	ADDI	$t0, $zero, 10
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_19:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t0, $t1
	BNE	$t2, $zero, L_24
L_20:	J	L_24
L_21:	ADDI	$t0, $zero, 11
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_22:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_23:	J	L_24
L_24:	ADDI	$t0, $zero, 2
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_25:	ADDI	$t0, $zero, 2
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_26:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUBU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_27:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 12($gp)
L_28:	LW	$t0, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_29:	LW	$t0, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_30:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUBU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_31:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 12($gp)
L_32:	LW	$t0, 16($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_33:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_34:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADD	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_35:	LW	$t0, 16($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_36:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_37:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADD	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_38:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUBU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_39:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_40:	J	L_40
