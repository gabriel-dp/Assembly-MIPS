.data
	question: .asciiz "How old are you: "
	answer: .asciiz "Your age is: "
	
.text
	li $v0, 4
	la $a0, question
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	li $v0, 4
	la $a0, answer
	syscall
	
	li $v0, 1
	move $a0, $s0
	syscall