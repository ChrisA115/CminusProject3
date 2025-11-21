	.data
.newline: .asciiz "\n"
	.text
	.globl main
main:	nop
	move	$fp,$sp
	add $s0, $gp, 200
	li $s1, 0
	sw $s1, 0($s0)
.L0:	nop
	add $s0, $gp, 200
	lw $s1, 0($s0)
	li $s0, 50
	slt $s2, $s1, $s0
	beq $s2, $zero, .L1
	add $s0, $gp, 200
	lw $s1, 0($s0)
	add $s0, $gp, 0
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	li $s0, 0
	sw $s0, 0($s1)
	add $s0, $gp, 200
	add $s1, $gp, 200
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L0
.L1:	nop
	add $s0, $gp, 204
	li $s1, 0
	sw $s1, 0($s0)
.L2:	nop
	add $s0, $gp, 204
	lw $s1, 0($s0)
	li $s0, 50
	slt $s2, $s1, $s0
	beq $s2, $zero, .L3
	add $s0, $gp, 204
	lw $s1, 0($s0)
	add $s0, $gp, 212
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	add $s0, $gp, 204
	lw $s2, 0($s0)
	li $s0, 50
	add $s3, $s2, $s0
	sw $s3, 0($s1)
	add $s0, $gp, 204
	add $s1, $gp, 204
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L2
.L3:	nop
	add $s0, $gp, 200
	li $s1, 0
	sw $s1, 0($s0)
	add $s0, $gp, 208
	li $s1, 0
	sw $s1, 0($s0)
.L4:	nop
	add $s0, $gp, 200
	lw $s1, 0($s0)
	li $s0, 100
	slt $s2, $s1, $s0
	beq $s2, $zero, .L5
	add $s0, $gp, 200
	lw $s1, 0($s0)
	li $s0, 50
	slt $s2, $s1, $s0
	beq $s2, $zero, .L6
	add $s0, $gp, 208
	add $s1, $gp, 208
	lw $s2, 0($s1)
	add $s1, $gp, 200
	lw $s3, 0($s1)
	add $s1, $gp, 0
	li $s4, 4
	mul $s5, $s3, $s4
	add $s3, $s1, $s5
	lw $s1, 0($s3)
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L7
.L6:	nop
	add $s0, $gp, 208
	add $s1, $gp, 208
	lw $s2, 0($s1)
	add $s1, $gp, 200
	lw $s3, 0($s1)
	li $s1, 50
	sub $s4, $s3, $s1
	add $s1, $gp, 212
	li $s3, 4
	mul $s5, $s4, $s3
	add $s3, $s1, $s5
	lw $s1, 0($s3)
	add $s3, $s2, $s1
	sw $s3, 0($s0)
.L7:	nop
	add $s0, $gp, 200
	add $s1, $gp, 200
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L4
.L5:	nop
	add $s0, $gp, 208
	lw $s1, 0($s0)
	move $a0, $s1
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	li $s0, 5
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
	li $s0, 10
	add $s1, $gp, 212
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
