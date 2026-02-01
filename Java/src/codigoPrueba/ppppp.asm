.text
.globl main
main:
    jal navidad
    li $v0, 10
    syscall
navidad:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $fp, 0($sp)
move $fp, $sp
li $t0, 10
addi $sp, $sp, -4
sw $t0, -4($fp)
li $t1, 3
addi $sp, $sp, -4
sw $t1, -8($fp)
lw $t2, -4($fp)
lw $t3, -8($fp)
add $t4, $t2, $t3
addi $sp, $sp, -4
sw $t4, -12($fp)
lw $t5, -4($fp)
lw $t6, -8($fp)
sub $t7, $t5, $t6
addi $sp, $sp, -4
sw $t7, -16($fp)
lw $t8, -4($fp)
lw $t9, -8($fp)
mul $t0, $t8, $t9
addi $sp, $sp, -4
sw $t0, -20($fp)
lw $t1, -4($fp)
lw $t2, -8($fp)
div $t1, $t2
mflo $t3
addi $sp, $sp, -4
sw $t3, -24($fp)
lw $t4, -4($fp)
lw $t5, -8($fp)
div $t4, $t5
mfhi $t6
addi $sp, $sp, -4
sw $t6, -28($fp)
lw $t7, -4($fp)
lw $t8, -8($fp)
li $t9, 1
beqz $t8, pow_end_21
move $t0, $t8
pow_loop_21:
mul $t9, $t9, $t7
addi $t0, $t0, -1
bgtz $t0, pow_loop_21
pow_end_21:
addi $sp, $sp, -4
sw $t9, -32($fp)
lw $t2, -12($fp)
move $a0, $t2
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t3, -16($fp)
move $a0, $t3
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t4, -20($fp)
move $a0, $t4
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t5, -24($fp)
move $a0, $t5
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t6, -28($fp)
move $a0, $t6
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t7, -32($fp)
move $a0, $t7
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -4($fp)
lw $t9, -8($fp)
slt $t0, $t8, $t9
addi $sp, $sp, -4
sw $t0, -36($fp)
lw $t1, -4($fp)
lw $t2, -8($fp)
slt $t3, $t2, $t1
addi $sp, $sp, -4
sw $t3, -40($fp)
lw $t4, -4($fp)
lw $t5, -8($fp)
xor $t6, $t4, $t5
sltu $t6, $t6, 1
addi $sp, $sp, -4
sw $t6, -44($fp)
lw $t7, -36($fp)
move $a0, $t7
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -40($fp)
move $a0, $t8
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -44($fp)
move $a0, $t9
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t0, -4($fp)
addi $t1, $t0, 1
sw $t1, -4($fp)
addi $sp, $sp, -4
sw $t1, -48($fp)
lw $t2, -4($fp)
addi $t3, $t2, -1
sw $t3, -4($fp)
addi $sp, $sp, -4
sw $t3, -52($fp)
lw $t4, -48($fp)
move $a0, $t4
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t5, -52($fp)
move $a0, $t5
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra
