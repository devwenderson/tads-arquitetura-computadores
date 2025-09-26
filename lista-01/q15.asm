.text
main:	addi $2, $0, 5		# n
	syscall
	
	add $8, $0, $2		# $8 = n
	addi $9, $0, 10		# $9 = 10
	
	div $8, $9		# Divisão 1
	mflo $8			# Quociente
	mfhi $10		# $10 = Número a ser exibido
	
	div $8, $9		# Divisão 2
	mflo $8
	mfhi $11		# $11 = Número a ser exibido
	
	div $8, $9		# Divisão 3
	mflo $8
	mfhi $12		# $12 = Número a ser exibido
	
	div $8, $9		# Divisão 4
	mfhi $13		# $13 = Número a ser exibido
				
				# f(n, a) = 32 + (16 + n) * a
	addi $14, $0, 32	# $14 = 32
	addi $15, $0, 16	# $15 = 16
	add $15, $15, $13	# (16 + n)
	sub $8, $0, $13		# a = hsb(0 - n)
	srl $8, $8, 31 		# a: 0 ou 1
 	mul $8, $8, $15		# (16 + n) * a
 	add $4, $14, $8		# 32 + (16 + n) * a
 	
	addi $2, $0, 11
	syscall
	
	addi $14, $0, 32	# $14 = 32
	addi $15, $0, 16	# $15 = 16
	add $15, $15, $12	# (16 + n)
	sub $8, $0, $12		# a = hsb(0 - n)
	srl $8, $8, 31 		# a: 0 ou 1
 	mul $8, $8, $15		# (16 + n) * a
 	add $4, $14, $8		# 32 + (16 + n) * a
 	
	addi $2, $0, 11
	syscall
	
	addi $14, $0, 32	# $14 = 32
	addi $15, $0, 16	# $15 = 16
	add $15, $15, $11	# (16 + n)
	sub $8, $0, $11		# a = hsb(0 - n)
	srl $8, $8, 31 		# a: 0 ou 1
 	mul $8, $8, $15		# (16 + n) * a
 	add $4, $14, $8		# 32 + (16 + n) * a
 	
	addi $2, $0, 11
	syscall
	
	addi $14, $0, 32	# $14 = 32
	addi $15, $0, 16	# $15 = 16
	add $15, $15, $10	# (16 + n)
	sub $8, $0, $10		# a = hsb(0 - n)
	srl $8, $8, 31 		# a: 0 ou 1
 	mul $8, $8, $15		# (16 + n) * a
 	add $4, $14, $8		# 32 + (16 + n) * a
 	
	addi $2, $0, 11
	syscall

	addi $2, $0, 10
	syscall
