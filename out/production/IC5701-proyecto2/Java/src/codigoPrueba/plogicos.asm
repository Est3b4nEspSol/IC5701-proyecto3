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
li $t0, 1
addi $sp, $sp, -4
sw $t0, -4($fp)
li $t1, 0
addi $sp, $sp, -4
sw $t1, -8($fp)
lw $t2, -4($fp)
sltu $t3, $t2, 1
addi $sp, $sp, -4
sw $t3, -12($fp)
lw $t4, -8($fp)
sltu $t5, $t4, 1
addi $sp, $sp, -4
sw $t5, -16($fp)
lw $t6, -12($fp)
move $a0, $t6
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t7, -16($fp)
move $a0, $t7
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -4($fp)
lw $t9, -4($fp)
and $t0, $t8, $t9
addi $sp, $sp, -4
sw $t0, -20($fp)
lw $t1, -4($fp)
lw $t2, -8($fp)
and $t3, $t1, $t2
addi $sp, $sp, -4
sw $t3, -24($fp)
lw $t4, -8($fp)
lw $t5, -4($fp)
and $t6, $t4, $t5
addi $sp, $sp, -4
sw $t6, -28($fp)
lw $t7, -8($fp)
lw $t8, -8($fp)
and $t9, $t7, $t8
addi $sp, $sp, -4
sw $t9, -32($fp)
lw $t0, -20($fp)
move $a0, $t0
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t1, -24($fp)
move $a0, $t1
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t2, -28($fp)
move $a0, $t2
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t3, -32($fp)
move $a0, $t3
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t4, -4($fp)
lw $t5, -4($fp)
or $t6, $t4, $t5
addi $sp, $sp, -4
sw $t6, -36($fp)
lw $t7, -4($fp)
lw $t8, -8($fp)
or $t9, $t7, $t8
addi $sp, $sp, -4
sw $t9, -40($fp)
lw $t0, -8($fp)
lw $t1, -4($fp)
or $t2, $t0, $t1
addi $sp, $sp, -4
sw $t2, -44($fp)
lw $t3, -8($fp)
lw $t4, -8($fp)
or $t5, $t3, $t4
addi $sp, $sp, -4
sw $t5, -48($fp)
lw $t6, -36($fp)
move $a0, $t6
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t7, -40($fp)
move $a0, $t7
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -44($fp)
move $a0, $t8
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -48($fp)
move $a0, $t9
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
