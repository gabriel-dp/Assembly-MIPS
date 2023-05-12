.data
	message1: .asciiz "Insert 10 integer positive numbers\n"
	message2: .asciiz "The sum of all numbers is: "

.text
	# Print message to user
	li $v0, 4
	la $a0, message1
	syscall

	# Initialize registers
	move $t0, $zero		# Counter
	move $s0, $zero		# Sum
	
	# Instructions loop
	while:
		# Check loop stop condition
		bge $t0, 10, end_while	

		# Receive number
		li $v0, 5
		syscall
		move $t1, $v0

		# Update registers
		add $s0, $s0, $t1
		addi $t0, $t0, 1
		
		# Restart loop
		j while
	end_while:
	
	# Print results
	li $v0, 4
	la $a0, message2
	syscall
	li $v0, 1
	move $a0, $s0
	syscall