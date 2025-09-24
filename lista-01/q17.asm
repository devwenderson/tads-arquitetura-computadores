.text
main:	addi $2, $0, 5		# n1
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5		# n2
	syscall
	add $9, $0, $2		
	
	addi $10, $0, 2		# $10 = 2
	
	add $9, $8, $9		# n1 + n2
	div $9, $10		# n1 + n2 / 2
	
	mfhi $11		# Resto
	mflo $12		# Quociente
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	
	addi $13, $0, 10
	mul $9, $11, $13	# $9 = Resto x 10
	div $9, $10
	mflo $4
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall