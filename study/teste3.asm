.data
	question: .asciiz "What is your name? "
	message: .asciiz "Nice to meet you " 
	name: .space 25
	
.text
	li $v0, 4
	la $a0, question
	syscall
	
	li $v0, 8
	la $a0, name
	la $a1, 25
	syscall
	
	li $v0, 4
	la $a0, message
	syscall
	
	li $v0, 4
	la $a0, name
	syscall
	