	.data
.newline: .asciiz "\n"
	.text
	.globl main
main:	nop
	move	$fp,$sp
	add $s0, $gp, 4
	li $s1, 1
	sw $s1, 0($s0)
.L0:	nop
	add $s0, $gp, 4
	lw $s1, 0($s0)
	li $s0, 10
	sle $s2, $s1, $s0
	beq $s2, $zero, .L1
	add $s0, $gp, 0
	li $s1, 1
	sw $s1, 0($s0)
.L2:	nop
	add $s0, $gp, 0
	lw $s1, 0($s0)
	li $s0, 10
	sle $s2, $s1, $s0
	beq $s2, $zero, .L3
	add $s0, $gp, 0
	lw $s1, 0($s0)
	add $s0, $gp, 4
	lw $s2, 0($s0)
	mul $s0, $s1, $s2
	move $a0, $s0
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	add $s0, $gp, 0
	add $s1, $gp, 0
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L2
.L3:	nop
	add $s0, $gp, 4
	add $s1, $gp, 4
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L0
.L1:	nop
	li $v0, 10
	syscall
