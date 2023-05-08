.data
	question: .asciiz "Type your number: "
	answer_equal: .asciiz "Your number is EQUAL to 0"
	answer_less: .asciiz "Your number is LESS than 0"
	answer_greater: .asciiz "Your number is GREATER than 0"
	
.text
	# Print message to user insert a number
	li $v0, 4
	la $a0, question
	syscall
	
	# Get user input number
	li $v0, 5
	syscall
	move $s0, $v0
	
	# Compare it to zero
	bne $s0, $zero, ifnotequal
		# If equal to 0
		la $a0, answer_equal
		j endif
	ifnotequal:
		bgt $s0, $zero, ifgreate
			# If less than 0
			la $a0, answer_less
			j endif
		ifgreater:
			# If greater than 0
			la $a0, answer_greater
			j endif	
	endif:
	
	li $v0, 4
	syscall