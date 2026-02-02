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
li $t0, 0
addi $sp, $sp, -4
sw $t0, -4($fp)
loop_start_0:
lw $t1, -4($fp)
move $a0, $t1
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t2, -4($fp)
li $t3, 1
lw $t5, -4($fp)
add $t4, $t5, $t3
sw $t4, -4($fp)
lw $t6, -4($fp)
li $t7, 5
xor $t8, $t6, $t7
sltu $t8, $t8, 1
bnez $t8, loop_end_1
j loop_start_0
loop_end_1:
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra
