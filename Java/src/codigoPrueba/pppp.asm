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
li $t0, 5
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
lw $t5, -12($fp)
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
