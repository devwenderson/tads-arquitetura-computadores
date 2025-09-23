.text
main:	addi $2, $0, 5
	syscall
	
	andi $4, $2, 1		# Se houver o bit 0 ativo na composição do número, então ele é ímpar
	
	addi $2, $0, 1
	syscall