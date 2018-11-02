L_1:	ADDI	$t0, $zero, 6
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
L_5:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_6:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 12($gp)
L_7:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_8:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_9:	LW	$t0, 12($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_10:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_11:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BNE	$t1, $t0, L_15
L_12:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_13:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_14:	J	L_15
L_15:	LW	$t0, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_16:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_17:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BNE	$t1, $t0, L_24
L_18:	LW	$t0, 12($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_19:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_20:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BEQ	$t1, $t0, L_24
L_21:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_22:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_23:	J	L_24
L_24:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_25:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_26:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_27:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 24($gp)
L_28:	J	L_28
