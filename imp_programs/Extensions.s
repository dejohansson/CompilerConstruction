L_1:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_2:	ADDI	$t0, $zero, 3
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_3:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t0, $t1
	BNE	$t2, $zero, L_9
L_4:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_5:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_6:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUB	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_7:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 4($gp)
L_8:	J	L_9
L_9:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_10:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_11:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t0, $t1
	BNE	$t2, $zero, L_17
L_12:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_13:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_14:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUB	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_15:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 8($gp)
L_16:	J	L_17
L_17:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_18:	ADDI	$t0, $zero, 5
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_19:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t0, $t1
	BNE	$t2, $zero, L_25
L_20:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_21:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_22:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUB	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_23:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 12($gp)
L_24:	J	L_25
L_25:	ADDI	$t0, $zero, 3
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_26:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_27:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t0, $t1
	BNE	$t2, $zero, L_36
L_28:	ADDI	$t0, $zero, 3
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_29:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_30:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BEQ	$t1, $t0, L_36
L_31:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_32:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_33:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUB	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_34:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 16($gp)
L_35:	J	L_36
L_36:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_37:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_38:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t0, $t1
	BNE	$t2, $zero, L_47
L_39:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_40:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_41:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BEQ	$t1, $t0, L_47
L_42:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_43:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_44:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUB	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_45:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_46:	J	L_47
L_47:	ADDI	$t0, $zero, 5
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_48:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_49:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t0, $t1
	BNE	$t2, $zero, L_58
L_50:	ADDI	$t0, $zero, 5
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_51:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_52:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BEQ	$t1, $t0, L_58
L_53:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_54:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_55:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUB	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_56:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 24($gp)
L_57:	J	L_58
L_58:	ADDI	$t0, $zero, 3
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_59:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_60:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t1, $t0
	BNE	$t2, $zero, L_66
	BEQ	$t1, $t0, L_66
L_61:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_62:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_63:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUB	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_64:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 28($gp)
L_65:	J	L_66
L_66:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_67:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_68:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t1, $t0
	BNE	$t2, $zero, L_74
	BEQ	$t1, $t0, L_74
L_69:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_70:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_71:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUB	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_72:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 32($gp)
L_73:	J	L_74
L_74:	ADDI	$t0, $zero, 5
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_75:	ADDI	$t0, $zero, 4
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_76:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	SLT	$t2, $t1, $t0
	BNE	$t2, $zero, L_82
	BEQ	$t1, $t0, L_82
L_77:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_78:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_79:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUB	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_80:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 36($gp)
L_81:	J	L_82
L_82:	J	L_82
