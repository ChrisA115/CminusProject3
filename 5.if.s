	.data
.newline: .asciiz "\n"
.string0: .asciiz "enter a:"
.string1: .asciiz "enter b:"
.string2: .asciiz "a = "
.string3: .asciiz "b = "
.string4: .asciiz "a = "
.string5: .asciiz "b = "
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
	la $s0, .string1
	move $a0, $s0
	li $v0, 4
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	add $s0, $gp, 4
	li $v0, 5
	syscall
	sw $v0, 0($s0)
	add $s0, $gp, 4
	lw $s1, 0($s0)
	add $s0, $gp, 0
	lw $s2, 0($s0)
	sgt $s0, $s1, $s2
	beq $s0, $zero, .L0
	add $s0, $gp, 0
	lw $s1, 0($s0)
	li $s0, 0
	sgt $s2, $s1, $s0
	beq $s2, $zero, .L1
	la $s0, .string2
	move $a0, $s0
	li $v0, 4
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	add $s0, $gp, 0
	lw $s1, 0($s0)
	move $a0, $s1
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	j .L2
.L1:	nop
	la $s0, .string3
	move $a0, $s0
	li $v0, 4
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	add $s0, $gp, 4
	lw $s1, 0($s0)
	move $a0, $s1
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
.L2:	nop
	j .L3
.L0:	nop
	add $s0, $gp, 0
	lw $s1, 0($s0)
	li $s0, 0
	slt $s2, $s1, $s0
	beq $s2, $zero, .L4
	la $s0, .string4
	move $a0, $s0
	li $v0, 4
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	add $s0, $gp, 0
	lw $s1, 0($s0)
	move $a0, $s1
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	j .L5
.L4:	nop
	la $s0, .string5
	move $a0, $s0
	li $v0, 4
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
	add $s0, $gp, 4
	lw $s1, 0($s0)
	move $a0, $s1
	li $v0, 1
	syscall
	li $v0, 4
	la, $a0, .newline
	syscall
.L5:	nop
.L3:	nop
	li $v0, 10
	syscall
