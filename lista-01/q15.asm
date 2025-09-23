.text
main:	addi $2, $0, 5		# n
	syscall
	
	add $8, $0, $2		# $8 = n
	addi $10, $0, 10	# divisor 10
	
	div $8, $10		# Divisão 1
	mflo $8			# Quociente
	mfhi $11		# Resto
	
	div $8, $10		# Divisão 2
	mflo $8
	mfhi $12
	
	div $8, $10		# Divisão 3
	mflo $8
	mfhi $13
	
	div $8, $10		# Divisão 4
	mflo $8
	mfhi $14
	
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall