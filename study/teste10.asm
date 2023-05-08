.data
	array:
		.align 2
		.space 16
		
.text
	move $t0 $zero
	move $t1 $zero
	
	li $t2 16
	
	while:
		beq $t0, $t2, end_while
	
		sw $t1, array($t0)
		addi $t0, $t0, 4
		addi $t1, $t1, 1
		j while
	end_while:
	
	move $t0 $zero
	imprime:
		lw $t3, array($t0)
		li $v0, 1
		move $a0, $t3
		syscall		
		addi $t0, $t0, 4
		blt $t0, $t2, imprime

			