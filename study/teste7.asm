.text
	li $s0, 0
	
	while:
		bge $s0, 10, end_while
		addi $s0, $s0, 1
		j while
	end_while:
	
	move $a0, $s0
	li $v0, 1
	syscall