	.data
.newline: .asciiz "\n"
.string0: .asciiz "enter a:"
	.text
	.globl main
main:	nop
	move	$fp,$sp
	la $s0, .string0
	move $a0, $s0
	li $v0, 4
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	add $s0, $gp, 0
	li $v0, 5
	syscall
	sw $v0, 0($s0)
	add $s0, $gp, 8
	li $s1, 0
	sw $s1, 0($s0)
	add $s0, $gp, 4
	li $s1, 0
	sw $s1, 0($s0)
.L0:	nop
	add $s0, $gp, 4
	lw $s1, 0($s0)
	add $s0, $gp, 0
	lw $s2, 0($s0)
	sle $s0, $s1, $s2
	add $s1, $gp, 4
	lw $s2, 0($s1)
	li $s1, 100
	sle $s3, $s2, $s1
	and $s1, $s0, $s3
	beq $s1, $zero, .L1
	add $s0, $gp, 8
	add $s1, $gp, 8
	lw $s2, 0($s1)
	add $s1, $gp, 4
	lw $s3, 0($s1)
	add $s1, $s2, $s3
	sw $s1, 0($s0)
	add $s0, $gp, 4
	add $s1, $gp, 4
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L0
.L1:	nop
	add $s0, $gp, 8
	lw $s1, 0($s0)
	move $a0, $s1
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	li $v0, 10
	syscall
