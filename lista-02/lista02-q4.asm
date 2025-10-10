.text
main:		addi $2, $0, 5
		syscall
		add $8, $0, $2
		
		addi $2, $0, 5
		syscall
		add $9, $0, $2
		
		# $8 = num1
		# $9 = num2
		
		sub $12, $8, $9
		beq $12, $0, numIgual
		
		slt $10, $8, $9		# Se $8 < $9, então $10 = 1. Senão, $10 = 0
		beq $10, $0, num1maior

num1menor:	add $4, $0, $8
		addi $2, $0, 1
		syscall
		
		addi $4, $0, '<'
		addi $2, $0, 11
		syscall
		
		add $4, $0, $9
		addi $2, $0, 1
		syscall
		j fim

num1maior:	add $4, $0, $8
		addi $2, $0, 1
		syscall
		
		addi $4, $0, '>'
		addi $2, $0, 11
		syscall
		
		add $4, $0, $9
		addi $2, $0, 1
		syscall
		j fim

numIgual:	add $4, $0, $8
		addi $2, $0, 1
		syscall
		
		addi $4, $0, '='
		addi $2, $0, 11
		syscall
		
		add $4, $0, $9
		addi $2, $0, 1
		syscall

fim:		addi $2, $0, 10
		syscall
		
		
		
		
		