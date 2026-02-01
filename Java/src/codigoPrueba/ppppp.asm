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
lw $t7, -12($fp)
move $a0, $t7
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -16($fp)
move $a0, $t8
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -20($fp)
move $a0, $t9
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t0, -24($fp)
move $a0, $t0
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t1, -28($fp)
move $a0, $t1
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t2, -4($fp)
lw $t3, -8($fp)
slt $t4, $t2, $t3
addi $sp, $sp, -4
sw $t4, -32($fp)
lw $t5, -4($fp)
lw $t6, -8($fp)
slt $t7, $t6, $t5
addi $sp, $sp, -4
sw $t7, -36($fp)
lw $t8, -4($fp)
lw $t9, -8($fp)
xor $t0, $t8, $t9
sltu $t0, $t0, 1
addi $sp, $sp, -4
sw $t0, -40($fp)
lw $t1, -32($fp)
move $a0, $t1
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t2, -36($fp)
move $a0, $t2
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t3, -40($fp)
move $a0, $t3
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t4, -4($fp)
addi $t5, $t4, 1
sw $t5, -4($fp)
addi $sp, $sp, -4
sw $t5, -44($fp)
lw $t6, -4($fp)
addi $t7, $t6, -1
sw $t7, -4($fp)
addi $sp, $sp, -4
sw $t7, -48($fp)
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
