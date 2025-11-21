	.data
.newline: .asciiz "\n"
.string0: .asciiz "Enter a:"
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
	add $s0, $gp, 0
	lw $s1, 0($s0)
	beq $s1, $zero, .L0
	add $s0, $gp, 4
	li $s1, 0
	add $s2, $gp, 0
	lw $s3, 0($s2)
	sub $s2, $s1, $s3
	sw $s2, 0($s0)
	add $s0, $gp, 4
	lw $s1, 0($s0)
	move $a0, $s1
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	j .L1
.L0:	nop
	add $s0, $gp, 4
	add $s1, $gp, 0
	lw $s2, 0($s1)
	sw $s2, 0($s0)
	add $s0, $gp, 4
	lw $s1, 0($s0)
	move $a0, $s1
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
.L1:	nop
	li $v0, 10
	syscall
