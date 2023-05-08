.data
	message1: .asciiz "Type your number: "
	message2: .asciiz "Your number is: "
	zero: .float 0.0
	
.text
	li $v0, 4
	la $a0, message1
	syscall
	
	li $v0, 6
	syscall
	
	li $v0, 4
	la $a0, message2
	syscall
	
	lwc1 $f1, zero
	add.s $f12, $f1, $f0
	li $v0, 2
	syscall