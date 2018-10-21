L_1:	ADDI	$at, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$at, 0($sp)
L_2:	LW	$at, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$at, 4($gp)
L_3:	ADDI	$at, $zero, 2
	ADDI	$sp, $sp, -4
	SW	$at, 0($sp)
L_4:	LW	$at, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$at, 8($gp)
L_5:	LW	$at, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$at, 0($sp)
L_6:	ADDI	$at, $zero, 19
	ADDI	$sp, $sp, -4
	SW	$at, 0($sp)
L_7:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t1, $t0
	BNE	$t0, $zero, L_11
	BEQ	$t1, $t0, L_11
L_8:	ADDI	$at, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$at, 0($sp)
L_9:	LW	$at, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$at, 8($gp)
L_10:	J	L_13
L_11:	ADDI	$at, $zero, 3
	ADDI	$sp, $sp, -4
	SW	$at, 0($sp)
L_12:	LW	$at, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$at, 8($gp)
L_13:	ADDI	$at, $zero, 2
	ADDI	$sp, $sp, -4
	SW	$at, 0($sp)
L_14:	ADDI	$at, $zero, 3
	ADDI	$sp, $sp, -4
	SW	$at, 0($sp)
L_15:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADD	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_16:	LW	$at, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$at, 8($gp)
L_17:	ADDI	$at, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$at, 0($sp)
L_18:	ADDI	$at, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$at, 0($sp)
L_19:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADD	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_20:	LW	$at, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$at, 8($gp)
L_21:	J	L_21
