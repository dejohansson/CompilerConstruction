L_1:   li $t0, 2
L_2:   li $t1, 3
L_3:   add $t0, $t1, $t0
L_4:   sw $t0, 4($gp)
L_5:   lw $t0, 4($gp)
L_6:   li $t1, 7
L_7:   sub $t0, $t0, $t1
          bgtz $t0, L_11
L_8:   li $t0, 20
L_9:   sw $t0, 8($gp)
L_10:   b L_17
L_11:   li $t0, 10
L_12:   li $t1, 0
L_13:   sub $t0, $t1, $t0
L_14:   lw $t1, 8($gp)
L_15:   sub $t0, $t1, $t0
L_16:   sw $t0, 8($gp)
L_17:   li $t0, 7
L_18:   lw $t1, 8($gp)
L_19:   sub $t0, $t0, $t1
            bgtz $t0, L_29
L_20:   lw $t0, 4($gp)
L_21:   li $t1, 1
L_22:   add $t0, $t1, $t0
L_23:   sw $t0, 4($gp)
L_24:   li $t0, 1
L_25:   lw $t1, 8($gp)
L_26:   sub $t0, $t1, $t0
L_27:   sw $t0, 8($gp)
L_28:   b L_17
L_29:   b L_29
