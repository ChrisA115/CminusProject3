	.data
.newline: .asciiz "\n"
	.text
	.globl main
main:	nop
	move	$fp,$sp
	li $s0, 0
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 32
	sw $s1, 0($s0)
	li $s0, 1
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 11
	sw $s1, 0($s0)
	li $s0, 2
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 111
	sw $s1, 0($s0)
	li $s0, 3
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 88
	sw $s1, 0($s0)
	li $s0, 4
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 11
	sw $s1, 0($s0)
	li $s0, 5
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 44
	sw $s1, 0($s0)
	li $s0, 6
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 33
	sw $s1, 0($s0)
	li $s0, 7
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 33
	sw $s1, 0($s0)
	li $s0, 8
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 22
	sw $s1, 0($s0)
	li $s0, 9
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 77
	sw $s1, 0($s0)
	li $s0, 10
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 45
	sw $s1, 0($s0)
	li $s0, 11
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 65
	sw $s1, 0($s0)
	li $s0, 12
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 76
	sw $s1, 0($s0)
	li $s0, 13
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 87
	sw $s1, 0($s0)
	li $s0, 14
	add $s1, $gp, 0
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	li $s1, 34
	sw $s1, 0($s0)
	add $s0, $gp, 60
	li $s1, 0
	sw $s1, 0($s0)
.L0:	nop
	add $s0, $gp, 60
	lw $s1, 0($s0)
	li $s0, 14
	slt $s2, $s1, $s0
	beq $s2, $zero, .L1
	add $s0, $gp, 72
	add $s1, $gp, 60
	lw $s2, 0($s1)
	sw $s2, 0($s0)
	add $s0, $gp, 64
	add $s1, $gp, 60
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
.L2:	nop
	add $s0, $gp, 64
	lw $s1, 0($s0)
	li $s0, 15
	slt $s2, $s1, $s0
	beq $s2, $zero, .L3
	add $s0, $gp, 64
	lw $s1, 0($s0)
	add $s0, $gp, 0
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	lw $s0, 0($s1)
	add $s1, $gp, 72
	lw $s2, 0($s1)
	add $s1, $gp, 0
	li $s3, 4
	mul $s4, $s2, $s3
	add $s2, $s1, $s4
	lw $s1, 0($s2)
	slt $s2, $s0, $s1
	beq $s2, $zero, .L4
	add $s0, $gp, 72
	add $s1, $gp, 64
	lw $s2, 0($s1)
	sw $s2, 0($s0)
	j .L5
.L4:	nop
.L5:	nop
	add $s0, $gp, 64
	add $s1, $gp, 64
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L2
.L3:	nop
	add $s0, $gp, 68
	add $s1, $gp, 60
	lw $s2, 0($s1)
	add $s1, $gp, 0
	li $s3, 4
	mul $s4, $s2, $s3
	add $s2, $s1, $s4
	lw $s1, 0($s2)
	sw $s1, 0($s0)
	add $s0, $gp, 60
	lw $s1, 0($s0)
	add $s0, $gp, 0
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	add $s0, $gp, 72
	lw $s2, 0($s0)
	add $s0, $gp, 0
	li $s3, 4
	mul $s4, $s2, $s3
	add $s2, $s0, $s4
	lw $s0, 0($s2)
	sw $s0, 0($s1)
	add $s0, $gp, 72
	lw $s1, 0($s0)
	add $s0, $gp, 0
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	add $s0, $gp, 68
	lw $s2, 0($s0)
	sw $s2, 0($s1)
	add $s0, $gp, 60
	add $s1, $gp, 60
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L0
.L1:	nop
	add $s0, $gp, 60
	li $s1, 0
	sw $s1, 0($s0)
.L6:	nop
	add $s0, $gp, 60
	lw $s1, 0($s0)
	li $s0, 15
	slt $s2, $s1, $s0
	beq $s2, $zero, .L7
	add $s0, $gp, 60
	lw $s1, 0($s0)
	add $s0, $gp, 0
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	lw $s0, 0($s1)
	move $a0, $s0
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	add $s0, $gp, 60
	add $s1, $gp, 60
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L6
.L7:	nop
	li $v0, 10
	syscall
