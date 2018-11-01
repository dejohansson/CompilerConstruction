L_1:	ADDI	$t0, $zero, 2
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_2:	ADDI	$t0, $zero, 3
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_3:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_4:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADD	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_5:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BEQ	$t1, $t0, L_13
L_6:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_7:	ADDI	$t0, $zero, 2
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_8:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUB	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_9:	ADDI	$t0, $zero, 3
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_10:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADD	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_11:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 4($gp)
L_12:	J	L_13
L_13:	J	L_13
