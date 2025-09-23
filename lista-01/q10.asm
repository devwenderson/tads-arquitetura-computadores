.text
main:	addi $2, $0, 12
	syscall
	
	add $8, $0, $2
	addi $4, $0, '\n'
	
	addi $2, $0, 11
	syscall
	
	add $4, $0, $8
	subi $4, $4, 32
	
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall