.text
main:		addi $2, $0, 5
		syscall
		add $8, $0, $2
	
		srl $9, $8, 31
		beq $9, 1, negativo
		
positivo:	sll $4, $8, 1
		j imp
		
negativo:	mul $4, $8, $8

imp:		addi $2, $0, 1
		syscall
	
fim:		addi $2, $0, 10
		syscall
	