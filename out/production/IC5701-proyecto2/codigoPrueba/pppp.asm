.data
_str_0: .asciiz "entra al if"

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
li $t0, 4
addi $sp, $sp, -4
sw $t0, -4($fp)
li $t1, 3
addi $sp, $sp, -4
sw $t1, -8($fp)
lw $t2, -4($fp)
lw $t3, -8($fp)
lw $t5, -4($fp)
lw $t6, -8($fp)
add $t4, $t5, $t6
addi $sp, $sp, -4
sw $t4, -12($fp)
lw $t7, -12($fp)
move $a0, $t7
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
li $v0, 5
syscall
sw $v0, -4($fp)
lw $t8, -4($fp)
move $a0, $t8
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -4($fp)
lw $t0, -8($fp)
lw $t2, -4($fp)
lw $t3, -8($fp)
add $t1, $t2, $t3
sw $t1, -12($fp)
lw $t4, -12($fp)
move $a0, $t4
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
li $t5, 10
li $t6, 4
slt $t7, $t6, $t5
la $t8, _str_0
move $a0, $t8
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
beqz $t7, decide_next_2
j decide_end_1
decide_next_2:
decide_end_1:
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra
