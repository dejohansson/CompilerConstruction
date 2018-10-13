L_1:	ADDI	$t0, $zero, 1
L_2:	ADD	$at, $zero, $t0
	SW	$at, 4($gp)
L_3:	ADDI	$t0, $zero, 2
L_4:	ADD	$at, $zero, $t0
	SW	$at, 8($gp)
L_5:	LW	$t0, 4($gp)
L_6:	ADDI	$t1, $zero, 19
L_7:	SLT	$t0, $t0, $t1
	BNE	$t0, $zero, L_11
	BEQ	$t0, $t1, L_11
L_8:	ADDI	$t0, $zero, 1
L_9:	ADD	$at, $zero, $t0
	SW	$at, 8($gp)
L_10:	J	L_13
L_11:	ADDI	$t0, $zero, 3
L_12:	ADD	$at, $zero, $t0
	SW	$at, 8($gp)
L_13:	ADDI	$t0, $zero, 2
L_14:	ADDI	$t1, $zero, 3
L_15:	ADD	$t0, $t1, $t0
L_16:	ADD	$at, $zero, $t0
	SW	$at, 8($gp)
L_17:	ADDI	$t0, $zero, 1
L_18:	ADDI	$t1, $zero, 1
L_19:	ADD	$t0, $t1, $t0
L_20:	ADD	$at, $zero, $t0
	SW	$at, 8($gp)
L_21:	J	L_21
