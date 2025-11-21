	.data
.newline: .asciiz "\n"
	.text
	.globl main
main:	nop
	move	$fp,$sp
	add $s0, $gp, 0
	li $s1, 0
	sw $s1, 0($s0)
.L0:	nop
	add $s0, $gp, 0
	lw $s1, 0($s0)
	li $s0, 50
	slt $s2, $s1, $s0
	beq $s2, $zero, .L1
	add $s0, $gp, 4
	li $s1, 0
	sw $s1, 0($s0)
.L2:	nop
	add $s0, $gp, 4
	lw $s1, 0($s0)
	li $s0, 10
	slt $s2, $s1, $s0
	beq $s2, $zero, .L3
	add $s0, $gp, 0
	lw $s1, 0($s0)
	add $s0, $gp, 4
	lw $s2, 0($s0)
	add $s0, $s1, $s2
	move $a0, $s0
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	add $s0, $gp, 4
	add $s1, $gp, 4
	lw $s2, 0($s1)
	li $s1, 2
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L2
.L3:	nop
	add $s0, $gp, 8
	li $s1, 0
	add $s2, $gp, 4
	lw $s3, 0($s2)
	sub $s2, $s1, $s3
	sw $s2, 0($s0)
.L4:	nop
	add $s0, $gp, 8
	lw $s1, 0($s0)
	add $s0, $gp, 4
	lw $s2, 0($s0)
	sne $s0, $s1, $s2
	beq $s0, $zero, .L5
	add $s0, $gp, 8
	lw $s1, 0($s0)
	move $a0, $s1
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	add $s0, $gp, 8
	add $s1, $gp, 8
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L4
.L5:	nop
	add $s0, $gp, 0
	add $s1, $gp, 0
	lw $s2, 0($s1)
	li $s1, 10
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L0
.L1:	nop
	li $v0, 10
	syscall
