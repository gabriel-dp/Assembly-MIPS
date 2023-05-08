.data
	message: .asciiz "Enter a number: "
	odd: .asciiz "Your number is ODD"
	even: .asciiz "Your number is EVEN"

.text
	li $v0, 4
	la $a0, message
	syscall
	
	li $v0, 5
	syscall
	move $a0, $v0
	
	jal check
	jal kill
	

	check:
		li $t1, 2
		div $a0, $t1
		mfhi $t0
		
		bne $t0, $zero, ifnotequal
			la $a0, even
			j endif
		ifnotequal:
			la $a0, odd
			j endif
		endif:
		
		li $v0, 4
		syscall
		
		jr $ra
		
	kill:
		li $v0, 10
		syscall
		