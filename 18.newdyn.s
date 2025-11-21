	.data
.newline: .asciiz "\n"
	.text
	.globl main
main:	nop
	move	$fp,$sp
	add $s0, $gp, 3844
	li $s1, 30
	sw $s1, 0($s0)
	add $s0, $gp, 3840
	li $s1, 30
	sw $s1, 0($s0)
	add $s0, $gp, 3848
	li $s1, 0
	sw $s1, 0($s0)
.L0:	nop
	add $s0, $gp, 3848
	lw $s1, 0($s0)
	add $s0, $gp, 3844
	lw $s2, 0($s0)
	slt $s0, $s1, $s2
	beq $s0, $zero, .L1
	add $s0, $gp, 3848
	lw $s1, 0($s0)
	add $s0, $gp, 3844
	lw $s2, 0($s0)
	mul $s0, $s1, $s2
	add $s1, $gp, 240
	li $s2, 4
	mul $s3, $s0, $s2
	add $s0, $s1, $s3
	add $s1, $gp, 3848
	lw $s2, 0($s1)
	sw $s2, 0($s0)
	add $s0, $gp, 3848
	lw $s1, 0($s0)
	add $s0, $gp, 0
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	add $s0, $gp, 3848
	lw $s2, 0($s0)
	li $s0, 1
	add $s3, $s2, $s0
	sw $s3, 0($s1)
	add $s0, $gp, 3848
	add $s1, $gp, 3848
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L0
.L1:	nop
	add $s0, $gp, 3852
	li $s1, 0
	sw $s1, 0($s0)
.L2:	nop
	add $s0, $gp, 3852
	lw $s1, 0($s0)
	add $s0, $gp, 3840
	lw $s2, 0($s0)
	slt $s0, $s1, $s2
	beq $s0, $zero, .L3
	add $s0, $gp, 3852
	lw $s1, 0($s0)
	add $s0, $gp, 240
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	add $s0, $gp, 3852
	lw $s2, 0($s0)
	sw $s2, 0($s1)
	add $s0, $gp, 3852
	lw $s1, 0($s0)
	add $s0, $gp, 120
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	li $s0, 2
	add $s2, $gp, 3852
	lw $s3, 0($s2)
	li $s2, 1
	add $s4, $s3, $s2
	mul $s2, $s0, $s4
	sw $s2, 0($s1)
	add $s0, $gp, 3852
	add $s1, $gp, 3852
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L2
.L3:	nop
	add $s0, $gp, 3848
	li $s1, 1
	sw $s1, 0($s0)
.L4:	nop
	add $s0, $gp, 3848
	lw $s1, 0($s0)
	add $s0, $gp, 3844
	lw $s2, 0($s0)
	slt $s0, $s1, $s2
	beq $s0, $zero, .L5
	add $s0, $gp, 3852
	li $s1, 1
	sw $s1, 0($s0)
.L6:	nop
	add $s0, $gp, 3852
	lw $s1, 0($s0)
	add $s0, $gp, 3840
	lw $s2, 0($s0)
	slt $s0, $s1, $s2
	beq $s0, $zero, .L7
	add $s0, $gp, 3848
	lw $s1, 0($s0)
	add $s0, $gp, 3844
	lw $s2, 0($s0)
	mul $s0, $s1, $s2
	add $s1, $gp, 3852
	lw $s2, 0($s1)
	add $s1, $s0, $s2
	add $s0, $gp, 240
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	add $s0, $gp, 3848
	lw $s2, 0($s0)
	li $s0, 1
	sub $s3, $s2, $s0
	add $s0, $gp, 3844
	lw $s2, 0($s0)
	mul $s0, $s3, $s2
	add $s2, $gp, 3852
	lw $s3, 0($s2)
	add $s2, $s0, $s3
	li $s0, 1
	sub $s3, $s2, $s0
	add $s0, $gp, 240
	li $s2, 4
	mul $s4, $s3, $s2
	add $s2, $s0, $s4
	lw $s0, 0($s2)
	sw $s0, 0($s1)
	add $s0, $gp, 3848
	lw $s1, 0($s0)
	add $s0, $gp, 120
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	lw $s0, 0($s1)
	add $s1, $gp, 3852
	lw $s2, 0($s1)
	add $s1, $gp, 0
	li $s3, 4
	mul $s4, $s2, $s3
	add $s2, $s1, $s4
	lw $s1, 0($s2)
	sne $s2, $s0, $s1
	beq $s2, $zero, .L8
	add $s0, $gp, 3848
	lw $s1, 0($s0)
	add $s0, $gp, 3844
	lw $s2, 0($s0)
	mul $s0, $s1, $s2
	add $s1, $gp, 3852
	lw $s2, 0($s1)
	add $s1, $s0, $s2
	add $s0, $gp, 240
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	add $s0, $gp, 3848
	lw $s2, 0($s0)
	add $s0, $gp, 3844
	lw $s3, 0($s0)
	mul $s0, $s2, $s3
	add $s2, $gp, 3852
	lw $s3, 0($s2)
	add $s2, $s0, $s3
	add $s0, $gp, 240
	li $s3, 4
	mul $s4, $s2, $s3
	add $s2, $s0, $s4
	lw $s0, 0($s2)
	li $s2, 1
	add $s3, $s0, $s2
	sw $s3, 0($s1)
	j .L9
.L8:	nop
.L9:	nop
	add $s0, $gp, 3848
	lw $s1, 0($s0)
	li $s0, 1
	sub $s2, $s1, $s0
	add $s0, $gp, 3844
	lw $s1, 0($s0)
	mul $s0, $s2, $s1
	add $s1, $gp, 3852
	lw $s2, 0($s1)
	add $s1, $s0, $s2
	add $s0, $gp, 240
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	lw $s0, 0($s1)
	add $s1, $gp, 3848
	lw $s2, 0($s1)
	add $s1, $gp, 3844
	lw $s3, 0($s1)
	mul $s1, $s2, $s3
	add $s2, $gp, 3852
	lw $s3, 0($s2)
	add $s2, $s1, $s3
	add $s1, $gp, 240
	li $s3, 4
	mul $s4, $s2, $s3
	add $s2, $s1, $s4
	lw $s1, 0($s2)
	slt $s2, $s0, $s1
	beq $s2, $zero, .L10
	add $s0, $gp, 3848
	lw $s1, 0($s0)
	add $s0, $gp, 3844
	lw $s2, 0($s0)
	mul $s0, $s1, $s2
	add $s1, $gp, 3852
	lw $s2, 0($s1)
	add $s1, $s0, $s2
	add $s0, $gp, 240
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	add $s0, $gp, 3848
	lw $s2, 0($s0)
	li $s0, 1
	sub $s3, $s2, $s0
	add $s0, $gp, 3844
	lw $s2, 0($s0)
	mul $s0, $s3, $s2
	add $s2, $gp, 3852
	lw $s3, 0($s2)
	add $s2, $s0, $s3
	add $s0, $gp, 240
	li $s3, 4
	mul $s4, $s2, $s3
	add $s2, $s0, $s4
	lw $s0, 0($s2)
	li $s2, 1
	add $s3, $s0, $s2
	sw $s3, 0($s1)
	j .L11
.L10:	nop
.L11:	nop
	add $s0, $gp, 3848
	lw $s1, 0($s0)
	add $s0, $gp, 3844
	lw $s2, 0($s0)
	mul $s0, $s1, $s2
	add $s1, $gp, 3852
	lw $s2, 0($s1)
	add $s1, $s0, $s2
	li $s0, 1
	sub $s2, $s1, $s0
	add $s0, $gp, 240
	li $s1, 4
	mul $s3, $s2, $s1
	add $s1, $s0, $s3
	lw $s0, 0($s1)
	add $s1, $gp, 3848
	lw $s2, 0($s1)
	add $s1, $gp, 3844
	lw $s3, 0($s1)
	mul $s1, $s2, $s3
	add $s2, $gp, 3852
	lw $s3, 0($s2)
	add $s2, $s1, $s3
	add $s1, $gp, 240
	li $s3, 4
	mul $s4, $s2, $s3
	add $s2, $s1, $s4
	lw $s1, 0($s2)
	slt $s2, $s0, $s1
	beq $s2, $zero, .L12
	add $s0, $gp, 3848
	lw $s1, 0($s0)
	add $s0, $gp, 3844
	lw $s2, 0($s0)
	mul $s0, $s1, $s2
	add $s1, $gp, 3852
	lw $s2, 0($s1)
	add $s1, $s0, $s2
	add $s0, $gp, 240
	li $s2, 4
	mul $s3, $s1, $s2
	add $s1, $s0, $s3
	add $s0, $gp, 3848
	lw $s2, 0($s0)
	add $s0, $gp, 3844
	lw $s3, 0($s0)
	mul $s0, $s2, $s3
	add $s2, $gp, 3852
	lw $s3, 0($s2)
	add $s2, $s0, $s3
	li $s0, 1
	sub $s3, $s2, $s0
	add $s0, $gp, 240
	li $s2, 4
	mul $s4, $s3, $s2
	add $s2, $s0, $s4
	lw $s0, 0($s2)
	li $s2, 1
	add $s3, $s0, $s2
	sw $s3, 0($s1)
	j .L13
.L12:	nop
.L13:	nop
	add $s0, $gp, 3852
	add $s1, $gp, 3852
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L6
.L7:	nop
	add $s0, $gp, 3848
	add $s1, $gp, 3848
	lw $s2, 0($s1)
	li $s1, 1
	add $s3, $s2, $s1
	sw $s3, 0($s0)
	j .L4
.L5:	nop
	li $s0, 899
	add $s1, $gp, 240
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
