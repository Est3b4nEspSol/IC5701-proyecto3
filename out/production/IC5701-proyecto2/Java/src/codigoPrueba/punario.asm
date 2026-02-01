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
add $t5, $t3, $t4
addi $sp, $sp, -4
sw $t5, -16($fp)
lw $t6, -4($fp)
lw $t7, -12($fp)
add $t8, $t6, $t7
addi $sp, $sp, -4
sw $t8, -20($fp)
lw $t9, -4($fp)
sub $t0, $zero, $t9
lw $t1, -8($fp)
add $t2, $t0, $t1
addi $sp, $sp, -4
sw $t2, -24($fp)
lw $t3, -4($fp)
sub $t4, $zero, $t3
lw $t5, -8($fp)
sub $t6, $zero, $t5
add $t7, $t4, $t6
addi $sp, $sp, -4
sw $t7, -28($fp)
lw $t8, -4($fp)
lw $t9, -8($fp)
sub $t0, $t8, $t9
addi $sp, $sp, -4
sw $t0, -32($fp)
lw $t1, -4($fp)
lw $t2, -12($fp)
sub $t3, $t1, $t2
addi $sp, $sp, -4
sw $t3, -36($fp)
lw $t4, -4($fp)
sub $t5, $zero, $t4
lw $t6, -8($fp)
sub $t7, $t5, $t6
addi $sp, $sp, -4
sw $t7, -40($fp)
lw $t8, -4($fp)
lw $t9, -8($fp)
sub $t0, $zero, $t9
sub $t1, $t8, $t0
addi $sp, $sp, -4
sw $t1, -44($fp)
lw $t2, -4($fp)
lw $t3, -8($fp)
mul $t4, $t2, $t3
addi $sp, $sp, -4
sw $t4, -48($fp)
lw $t5, -4($fp)
lw $t6, -12($fp)
mul $t7, $t5, $t6
addi $sp, $sp, -4
sw $t7, -52($fp)
lw $t8, -4($fp)
sub $t9, $zero, $t8
lw $t0, -8($fp)
mul $t1, $t9, $t0
addi $sp, $sp, -4
sw $t1, -56($fp)
lw $t2, -4($fp)
sub $t3, $zero, $t2
lw $t4, -8($fp)
sub $t5, $zero, $t4
mul $t6, $t3, $t5
addi $sp, $sp, -4
sw $t6, -60($fp)
lw $t7, -4($fp)
lw $t8, -8($fp)
div $t7, $t8
mflo $t9
addi $sp, $sp, -4
sw $t9, -64($fp)
lw $t0, -4($fp)
lw $t1, -12($fp)
div $t0, $t1
mflo $t2
addi $sp, $sp, -4
sw $t2, -68($fp)
lw $t3, -4($fp)
sub $t4, $zero, $t3
lw $t5, -8($fp)
div $t4, $t5
mflo $t6
addi $sp, $sp, -4
sw $t6, -72($fp)
lw $t7, -4($fp)
lw $t8, -8($fp)
div $t7, $t8
mfhi $t9
addi $sp, $sp, -4
sw $t9, -76($fp)
lw $t0, -4($fp)
sub $t1, $zero, $t0
lw $t2, -8($fp)
div $t1, $t2
mfhi $t3
addi $sp, $sp, -4
sw $t3, -80($fp)
lw $t4, -16($fp)
move $a0, $t4
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t5, -20($fp)
move $a0, $t5
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t6, -24($fp)
move $a0, $t6
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t7, -28($fp)
move $a0, $t7
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -32($fp)
move $a0, $t8
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -36($fp)
move $a0, $t9
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t0, -40($fp)
move $a0, $t0
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t1, -44($fp)
move $a0, $t1
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t2, -48($fp)
move $a0, $t2
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t3, -52($fp)
move $a0, $t3
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t4, -56($fp)
move $a0, $t4
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t5, -60($fp)
move $a0, $t5
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t6, -64($fp)
move $a0, $t6
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t7, -68($fp)
move $a0, $t7
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -72($fp)
move $a0, $t8
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -76($fp)
move $a0, $t9
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t0, -4($fp)
lw $t1, -8($fp)
slt $t2, $t1, $t0
addi $sp, $sp, -4
sw $t2, -84($fp)
lw $t3, -12($fp)
lw $t4, -8($fp)
slt $t5, $t3, $t4
addi $sp, $sp, -4
sw $t5, -88($fp)
lw $t6, -4($fp)
sub $t7, $zero, $t6
lw $t8, -12($fp)
slt $t9, $t7, $t8
addi $sp, $sp, -4
sw $t9, -92($fp)
lw $t0, -4($fp)
sub $t1, $zero, $t0
lw $t2, -8($fp)
sub $t3, $zero, $t2
slt $t4, $t3, $t1
addi $sp, $sp, -4
sw $t4, -96($fp)
lw $t5, -12($fp)
li $t6, -2
xor $t7, $t5, $t6
sltu $t7, $t7, 1
addi $sp, $sp, -4
sw $t7, -100($fp)
lw $t8, -4($fp)
sub $t9, $zero, $t8
lw $t0, -4($fp)
xor $t2, $t9, $t0
sltu $t1, $zero, $t2
addi $sp, $sp, -4
sw $t1, -104($fp)
lw $t3, -84($fp)
move $a0, $t3
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t4, -88($fp)
move $a0, $t4
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t5, -92($fp)
move $a0, $t5
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t6, -96($fp)
move $a0, $t6
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t7, -100($fp)
move $a0, $t7
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -104($fp)
move $a0, $t8
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -4($fp)
lw $t0, -8($fp)
add $t1, $t9, $t0
sub $t2, $zero, null
addi $sp, $sp, -4
sw $t2, -108($fp)
lw $t3, -4($fp)
lw $t4, -8($fp)
sub $t5, $t3, $t4
sub $t6, $zero, null
addi $sp, $sp, -4
sw $t6, -112($fp)
lw $t7, -4($fp)
lw $t8, -8($fp)
mul $t9, $t7, $t8
sub $t0, $zero, null
addi $sp, $sp, -4
sw $t0, -116($fp)
lw $t1, -4($fp)
sub $t2, $zero, $t1
lw $t3, -8($fp)
sub $t4, $zero, $t3
add $t5, $t2, $t4
lw $t6, -12($fp)
add $t7, $t5, $t6
addi $sp, $sp, -4
sw $t7, -120($fp)
lw $t8, -108($fp)
move $a0, $t8
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -112($fp)
move $a0, $t9
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t0, -116($fp)
move $a0, $t0
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t1, -120($fp)
move $a0, $t1
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
