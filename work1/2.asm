.data
	message: .asciiz "Insert four integers\n"

.text
	# Print message to user
	li $v0, 4
	la $a0, message
	syscall
	
	# Receive numbers
	li $v0, 5
	syscall
	move $a0, $v0
	li $v0, 5
	syscall
	move $a1, $v0
	li $v0, 5
	syscall
	move $a2, $v0
	li $v0, 5
	syscall
	move $a3, $v0
	
	# Run function
	jal get_greater
	
	# Print result
	move $a0, $v0
	li $v0, 1
	syscall
	
	# End program
	li $v0, 10
	syscall

	# Function instructions
	get_greater:
		move $t0, $a0
		bge $t0, $a1, if_a1_less
			move $t0, $a1
		if_a1_less:
		bge $t0, $a2, if_a2_less
			move $t0, $a2
		if_a2_less:
		bge $t0, $a3, if_a3_less
			move $t0, $a3
		if_a3_less:
		
		move $v0, $t0		
		jr $ra
	
	

	