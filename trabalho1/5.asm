.data
	array: .word 0,1,2,3,4,5,6,7,8,9

.text
	# Initialize indexes
	move $t0, $zero
	addi $t1, $zero, 36
	
	while:
		# Condition to stop loop
		blt $t0, $t1, continue
			j end_while
		continue:
		
		# Swap array positions
		lw $t2, array($t0)
		lw $t3, array($t1)
		sw $t3, array($t0)
		sw $t2, array($t1)
		
		# Update indexes
		addi $t0, $t0, 4
		subi $t1, $t1, 4
		
		# Restart loop
		j while
	end_while: