L_1:	ADDI	$t0, $zero, 2
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_2:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 4($gp)
L_3:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_4:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 8($gp)
L_5:	ADDI	$t0, $zero, 5
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_6:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 12($gp)
L_7:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_8:	LW	$t0, 12($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_9:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADD	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_10:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 4($gp)
L_11:	LW	$t0, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_12:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_13:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADD	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_14:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 4($gp)
L_15:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_16:	LW	$t0, 12($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_17:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t0, $t1
	BNE	$t2, $zero, L_27
L_18:	LW	$t0, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_19:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_20:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUBU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_21:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 4($gp)
L_22:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_23:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_24:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_25:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 8($gp)
L_26:	J	L_15
L_27:	J	L_27
