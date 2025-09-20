.text
main: 	addi $2, $0, 5
	syscall
	
	add $8, $0, $2
	addi $10, $0, 10
	
	div $8, $10
	mfhi $11		# resto
	mflo $8			# quociente
	
	add $4, $0, $11		# Exibe primeiro algarismo
	addi $2, $0, 1
	syscall
	
	div $8, $10
	mfhi $11		# resto	
	mflo $8			# quociente
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	div $8, $10
	mfhi $11		# resto
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall			