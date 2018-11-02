L_1:	ADDI	$t0, $zero, 3
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_2:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 4($gp)
L_3:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_4:	LW	$t0, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_5:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t0, $t1
	BNE	$t2, $zero, L_12
L_6:	LW	$t0, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_7:	ADDI	$t0, $zero, 7
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_8:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t0, $t1
	BNE	$t2, $zero, L_12
L_9:	ADDI	$t0, $zero, 10
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_10:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 4($gp)
L_11:	J	L_12
L_12:	J	L_12
