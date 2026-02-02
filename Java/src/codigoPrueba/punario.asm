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
li $t0, 15
addi $sp, $sp, -4
sw $t0, -4($fp)
li $t1, 4
addi $sp, $sp, -4
sw $t1, -8($fp)
li $t2, -2
addi $sp, $sp, -4
sw $t2, -12($fp)
lw $t3, -4($fp)
lw $t4, -8($fp)
lw $t6, -4($fp)
lw $t7, -8($fp)
add $t5, $t6, $t7
addi $sp, $sp, -4
sw $t5, -16($fp)
lw $t8, -4($fp)
lw $t9, -12($fp)
lw $t1, -4($fp)
lw $t2, -12($fp)
add $t0, $t1, $t2
addi $sp, $sp, -4
sw $t0, -20($fp)
lw $t3, -4($fp)
sub $t4, $zero, $t3
lw $t5, -8($fp)
lw $t7, -8($fp)
add $t6, $t4, $t7
addi $sp, $sp, -4
sw $t6, -24($fp)
lw $t8, -4($fp)
sub $t9, $zero, $t8
lw $t0, -8($fp)
sub $t1, $zero, $t0
add $t2, $t9, $t1
addi $sp, $sp, -4
sw $t2, -28($fp)
lw $t3, -4($fp)
lw $t4, -8($fp)
sub $t5, $t3, $t4
addi $sp, $sp, -4
sw $t5, -32($fp)
lw $t6, -4($fp)
lw $t7, -12($fp)
sub $t8, $t6, $t7
addi $sp, $sp, -4
sw $t8, -36($fp)
lw $t9, -4($fp)
sub $t0, $zero, $t9
lw $t1, -8($fp)
sub $t2, $t0, $t1
addi $sp, $sp, -4
sw $t2, -40($fp)
lw $t3, -4($fp)
lw $t4, -8($fp)
sub $t5, $zero, $t4
sub $t6, $t3, $t5
addi $sp, $sp, -4
sw $t6, -44($fp)
lw $t7, -4($fp)
lw $t8, -8($fp)
mul $t9, $t7, $t8
addi $sp, $sp, -4
sw $t9, -48($fp)
lw $t0, -4($fp)
lw $t1, -12($fp)
mul $t2, $t0, $t1
addi $sp, $sp, -4
sw $t2, -52($fp)
lw $t3, -4($fp)
sub $t4, $zero, $t3
lw $t5, -8($fp)
mul $t6, $t4, $t5
addi $sp, $sp, -4
sw $t6, -56($fp)
lw $t7, -4($fp)
sub $t8, $zero, $t7
lw $t9, -8($fp)
sub $t0, $zero, $t9
mul $t1, $t8, $t0
addi $sp, $sp, -4
sw $t1, -60($fp)
lw $t2, -4($fp)
lw $t3, -8($fp)
div $t2, $t3
mflo $t4
addi $sp, $sp, -4
sw $t4, -64($fp)
lw $t5, -4($fp)
lw $t6, -12($fp)
div $t5, $t6
mflo $t7
addi $sp, $sp, -4
sw $t7, -68($fp)
lw $t8, -4($fp)
sub $t9, $zero, $t8
lw $t0, -8($fp)
div $t9, $t0
mflo $t1
addi $sp, $sp, -4
sw $t1, -72($fp)
lw $t2, -4($fp)
lw $t3, -8($fp)
div $t2, $t3
mfhi $t4
addi $sp, $sp, -4
sw $t4, -76($fp)
lw $t5, -4($fp)
sub $t6, $zero, $t5
lw $t7, -8($fp)
div $t6, $t7
mfhi $t8
addi $sp, $sp, -4
sw $t8, -80($fp)
lw $t9, -16($fp)
move $a0, $t9
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
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
lw $t4, -36($fp)
move $a0, $t4
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t5, -40($fp)
move $a0, $t5
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t6, -44($fp)
move $a0, $t6
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t7, -48($fp)
move $a0, $t7
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -52($fp)
move $a0, $t8
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -56($fp)
move $a0, $t9
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t0, -60($fp)
move $a0, $t0
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t1, -64($fp)
move $a0, $t1
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t2, -68($fp)
move $a0, $t2
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t3, -72($fp)
move $a0, $t3
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t4, -76($fp)
move $a0, $t4
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t5, -4($fp)
lw $t6, -8($fp)
slt $t7, $t6, $t5
addi $sp, $sp, -4
sw $t7, -84($fp)
lw $t8, -12($fp)
lw $t9, -8($fp)
slt $t0, $t8, $t9
addi $sp, $sp, -4
sw $t0, -88($fp)
lw $t1, -4($fp)
sub $t2, $zero, $t1
lw $t3, -12($fp)
slt $t4, $t2, $t3
addi $sp, $sp, -4
sw $t4, -92($fp)
lw $t5, -4($fp)
sub $t6, $zero, $t5
lw $t7, -8($fp)
sub $t8, $zero, $t7
slt $t9, $t8, $t6
addi $sp, $sp, -4
sw $t9, -96($fp)
lw $t0, -12($fp)
li $t1, -2
xor $t2, $t0, $t1
sltu $t2, $t2, 1
addi $sp, $sp, -4
sw $t2, -100($fp)
lw $t3, -4($fp)
sub $t4, $zero, $t3
lw $t5, -4($fp)
xor $t7, $t4, $t5
sltu $t6, $zero, $t7
addi $sp, $sp, -4
sw $t6, -104($fp)
lw $t8, -84($fp)
move $a0, $t8
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -88($fp)
move $a0, $t9
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t0, -92($fp)
move $a0, $t0
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t1, -96($fp)
move $a0, $t1
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t2, -100($fp)
move $a0, $t2
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t3, -104($fp)
move $a0, $t3
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
