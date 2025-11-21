	.data
.newline: .asciiz "\n"
	.text
	.globl main
main:	nop
	move	$fp,$sp
	add $s0, $gp, 0
	li $s1, 0
	sw $s1, 0($s0)
	add $s0, $gp, 4
	add $s1, $gp, 0
	lw $s2, 0($s1)
	li $s1, 2
	sub $s3, $s2, $s1
	sw $s3, 0($s0)
	add $s0, $gp, 0
	lw $s1, 0($s0)
	beq $s1, $zero, .L0
	li $s0, 1
	move $a0, $s0
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	j .L1
.L0:	nop
	li $s0, 0
	move $a0, $s0
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
.L1:	nop
	add $s0, $gp, 4
	lw $s1, 0($s0)
	beq $s1, $zero, .L2
	add $s0, $gp, 0
	lw $s1, 0($s0)
	beq $s1, $zero, .L3
	li $s0, 0
	move $a0, $s0
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	j .L4
.L3:	nop
	li $s0, 1
	move $a0, $s0
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
.L4:	nop
	j .L5
.L2:	nop
	li $s0, 0
	move $a0, $s0
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
.L5:	nop
	li $v0, 10
	syscall
