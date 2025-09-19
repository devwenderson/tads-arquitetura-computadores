.text
main:	addi $2, $0, 5
	syscall
	add $4, $0, $2
	addi $2, $0, 5
	syscall
	mul $4, $4, $2
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
	