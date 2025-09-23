.text
main:	addi $2, $0, 5
	syscall
	
	add $8, $0, $2		# Soma 3 vezes
	add $8, $8, $2
	add $8, $8, $2
	
	addi $2, $0, 5
	syscall
	
	add $9, $0, $2		# Soma 9 vezes
	add $9, $9, $2
	add $9, $9, $2
	add $9, $9, $2
	add $9, $9, $2
	add $9, $9, $2
	add $9, $9, $2
	add $9, $9, $2
	add $9, $9, $2
	add $9, $9, $2
	
	addi $2, $0, 5
	syscall
	
	add $10, $0, $2		# Soma 15 vezes
	add $10, $10, $2
	add $10, $10, $2
	add $10, $10, $2
	add $10, $10, $2
	add $10, $10, $2
	add $10, $10, $2
	add $10, $10, $2
	add $10, $10, $2
	add $10, $10, $2
	add $10, $10, $2
	add $10, $10, $2
	add $10, $10, $2
	add $10, $10, $2
	add $10, $10, $2
	
	addi $11, $0, 27	# Soma dos pesos 3, 9, 15
	add $12, $8, $9
	add $12, $12, $10
	
	div $12, $11
	mflo $4
	
	addi $2, $0, 1
	syscall
	
	 