.data
	question: .asciiz "Type your number: "
	answer_odd: .asciiz "Your number is ODD"
	answer_even: .asciiz "Your number is EVEN"
	
.text
	# Print message to user insert a number
	li $v0, 4
	la $a0, question
	syscall
	
	# Get user input number
	li $v0, 5
	syscall
	move $s0, $v0
	
	# Get the rest of division
	li $t0, 2
	div $s0, $t0
	mfhi $t1
	
	# Compare it to zero
	bne $t1, $zero, ifnot
		li $v0, 4
		la $a0, answer_even
		syscall
	ifnot:
		li $v0, 4
		la $a0, answer_odd
		syscall