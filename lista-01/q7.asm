.text
main:	addi $2, $0, 5		# n
	syscall
	add $8, $0, $2		# $8 = n
	addi $10, $0, 10	# $10 = 10
	
	div $8, $10		# ==== Primeira divisão ====
	mfhi $11		# resto
	mflo $8			# quociente
	
	add $4, $0, $11		# Exibe último algarismo
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	div $8, $10		# ==== Segunda divisão ====
	mfhi $11		# resto		
	mflo $8			# Quociente
	
	add $4, $0, $11		# Exibe penúltimo algarismo
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	div $8, $10		# ==== Terceira divisão ====
	mfhi $11		# Resto
	mflo $8			# Quociente
	
	add $4, $0, $11		# Exibe segundo algarismo
	addi $2, $0, 1
	syscall
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	div $8, $10		# ==== Quarta divisão ====
	mfhi $11		# Resto
	
	add $4, $0, $11		# Exibe primeiro algarismo
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
