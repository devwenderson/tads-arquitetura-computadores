.text
main: 	addi $2, $0, 5
	syscall
	
	srl $4, $2, 3
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
