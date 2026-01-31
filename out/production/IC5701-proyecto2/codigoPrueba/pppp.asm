.text
.globl main
main:
    jal navidad
    li $v0, 10
    syscall

navidad:
    addi $sp, $sp, -8
    sw $fp, 4($sp)
    sw $ra, 0($sp)
    addi $fp, $sp, 4
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
    lw $ra, 0($sp)
    lw $fp, 4($sp)
    addi $sp, $sp, 20
    jr $ra
