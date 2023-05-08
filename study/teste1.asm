.text
	li $t0, 23
	li $t1, 15
	sub $s0, $t0, $t1
	subi $s0, $s0, 3
	
	mul $s0, $s0, 10
	sll $s1, $s0, 2
	
	li $t2, 3
	div $s1, $t2
	mflo $s2
	mfhi $s3
	
	srl $s4, $s2, 2