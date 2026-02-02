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
for_cond_0:
lw $t1, 0($fp)
li $t2, 10
slt $t3, $t1, $t2
beqz $t3, for_end_1
lw $t6, 0($fp)
move $a0, $t6
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
# Increment
lw $t4, 0($fp)
addi $t5, $t4, 1
sw $t5, 0($fp)
j for_cond_0
for_end_1:
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra
