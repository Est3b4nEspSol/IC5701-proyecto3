.data
_str_0: .asciiz "Primera linea"
_str_1: .asciiz "Segunda linea"
_str_2: .asciiz "Tercera linea"

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
la $t0, _str_0
addi $sp, $sp, -4
sw $t0, -4($fp)
la $t1, _str_1
addi $sp, $sp, -4
sw $t1, -8($fp)
la $t2, _str_2
addi $sp, $sp, -4
sw $t2, -12($fp)
lw $t3, -4($fp)
move $a0, $t3
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t4, -8($fp)
move $a0, $t4
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t5, -12($fp)
move $a0, $t5
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra
