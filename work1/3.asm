.data 
	message1: .asciiz "Insert an positive integer number: "
	message2: .asciiz "Factorial = "
	
.text
	# Print user message
	li $v0, 4
	la $a0, message1
	syscall
	
	# Read input number
	li $v0, 5
	syscall
	move $s1, $v0
		
	# Print result message
	li $v0, 4
	la $a0, message2
	syscall

	# Run function
	move $a0, $s1
	jal factorial
	
	# Print result
	move $a0, $v0
	li $v0, 1
	syscall
	
	# End program
	li $v0, 10
	syscall

	# Function instructions
	factorial:
		addi $s0, $zero, 1
		while:
			bgt $a0, 1, is_valid
				j end_while
			is_valid:
			mul $s0, $s0, $a0
			subi $a0, $a0, 1
			j while
		end_while:
		move $v0, $s0
		jr $ra
