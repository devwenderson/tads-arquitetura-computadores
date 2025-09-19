.text
main: 	addi $2, $0, 5	# $2 recebe um inteiro
	syscall		
	addi $8, $0, 2
	mul $4, $2, $8
	addi $2, $0, 1 
	syscall
	addi $2, $0, 10
	syscall