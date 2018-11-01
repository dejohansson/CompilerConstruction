L_1:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_2:	ADDI	$t0, $zero, 2
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_3:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_4:	ADDI	$t0, $zero, 3
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_5:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_6:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 4($gp)
L_7:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_8:	ADDI	$t0, $zero, 2
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_9:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_10:	ADDI	$t0, $zero, 3
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_11:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUBU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_12:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 8($gp)
L_13:	LW	$t0, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_14:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_15:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_16:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_17:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_18:	LW	$t0, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_19:	ADDI	$t0, $zero, 2
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_20:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_21:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	SUBU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_22:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 12($gp)
L_23:	J	L_27
L_24:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_25:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_26:	J	L_27
L_27:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_28:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_29:	J	L_30
L_30:	LW	$t0, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_31:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_32:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BNE	$t1, $t0, L_40
L_33:	LW	$t0, 12($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_34:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_35:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BEQ	$t1, $t0, L_40
L_36:	J	L_40
L_37:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_38:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_39:	J	L_40
L_40:	LW	$t0, 12($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_41:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_42:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BNE	$t1, $t0, L_46
L_43:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_44:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_45:	J	L_46
L_46:	LW	$t0, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_47:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_48:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BNE	$t1, $t0, L_61
L_49:	LW	$t0, 12($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_50:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_51:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BEQ	$t1, $t0, L_61
L_52:	LW	$t0, 4($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_53:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_54:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BNE	$t1, $t0, L_61
L_55:	LW	$t0, 12($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_56:	LW	$t0, 8($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_57:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDI	$sp, $sp, 8
	BEQ	$t1, $t0, L_61
L_58:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_59:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_60:	J	L_61
L_61:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_62:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_63:	J	L_66
L_64:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_65:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 24($gp)
L_66:	J	L_70
L_67:	ADDI	$t0, $zero, 1
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_68:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 20($gp)
L_69:	J	L_72
L_70:	ADDI	$t0, $zero, 0
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_71:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 24($gp)
L_72:	J	L_78
L_73:	LW	$t0, 20($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_74:	LW	$t0, 24($gp)
	ADDI	$sp, $sp, -4
	SW	$t0, 0($sp)
L_75:	LW	$t0, 0($sp)
	LW	$t1, 4($sp)
	ADDU	$t0, $t1, $t0
	ADDI	$sp, $sp, 4
	SW	$t0, 0($sp)
L_76:	LW	$t0, 0($sp)
	ADDI	$sp, $sp, 4
	SW	$t0, 16($gp)
L_77:	J	L_72
L_78:	J	L_78
