.text
.globl main
main:
    jal navidad
    li $v0, 10
    syscall
li $t0, 5
navidad:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $fp, 0($sp)
move $fp, $sp
li $t0, 5
addi $sp, $sp, -4
sw $t0, -4($fp)
li $t1, 2
li $t2, 3
addi $sp, $sp, -4
sw $t2, -8($fp)
lw $t3, -4($fp)
lw $t4, -8($fp)
add $t5, $t3, $t4
addi $sp, $sp, -4
sw $t5, -12($fp)
lw $t6, -12($fp)
move $a0, $t6
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
