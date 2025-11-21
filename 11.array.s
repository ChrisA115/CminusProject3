	.data
.newline: .asciiz "\n"
	.text
	.globl main
main:	nop
	move	$fp,$sp
	li $s0, 3
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 4
	sw $s1, 0($s0)
	li $s0, 3
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	lw $s1, 0($s0)
	move $a0, $s1
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	li $v0, 10
	syscall
