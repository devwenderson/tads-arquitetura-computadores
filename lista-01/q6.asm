.text
main: 	addi $2, $0, 5			# n
	syscall
			
	add $8, $0, $2			# $8 = n
	
	addi $10, $0, 10		# $10 = 10
	
	div $8, $10			# n / 10
	mfhi $11			# $11 = resto
	mflo $8				# $8 = quociente
	
	add $12, $0, $11		# armazena resto em $12
	
	div $8, $10			# quociente / 10
	mfhi $11
	mflo $8
	
	add $13, $0, $11		# armazena resto em $13
	
	div $8, $10
	mfhi $11
	
	add $14, $0, $11		# armazena resto em $14
	
	add $4, $0, $14			# Início da exibição dos restos
	addi $2, $0, 1
	syscall
	
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	
	add $4, $0, $12			# Fim da exibição dos restos
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
