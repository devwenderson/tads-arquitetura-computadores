.text				# Para somar os algarismos, basta dividir o número por 10, somar o resto e dividir o quociente por 10 numa determinada quantidade de vezes
main:	addi $2, $0, 5		# n
	syscall
	add $8, $0, $2		# $8 = n
	addi $10, $0, 10	# $10 = 10
	
	div $8, $10		# n / 10
	mfhi $11		# hi: resto     -> $11 = resto
	mflo $12		# lo: quociente -> $12 = quociente
	
	add $4, $0, $11		# Primeira soma do resto
	
	div $12, $10
	mfhi $11
	mflo $12
	
	add $4, $4, $11		# Segunda soma do resto
	
	div $12, $10
	mfhi $11
	mflo $12
	
	add $4, $4, $11		# Terceira soma do resto
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall