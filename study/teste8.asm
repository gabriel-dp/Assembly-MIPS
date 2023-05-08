.text
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $t1, 0
	while:
		bgt $t1, $t0, end_while
				
		move $a0, $t1
		li $v0, 1
		syscall
		
		addi $t1, $t1, 1
		j while
	end_while:
