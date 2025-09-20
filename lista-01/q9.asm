.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2		# $8 = segundos
	addi $9, $0, 60
	
	div $8, $9		# Conversão Segundos -> Minutos
	mfhi $10		# Resto (segundos)
	mflo $8			# Quociente (minutos)
	
	div $8, $9		# Conversão Minutos -> Horas
	mfhi $11		# Resto (minutos)
	mflo $8			# Quociente (horas)
	
	add $4, $0, $8		# Exibe as Horas
	addi $2, $0, 1
	syscall
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11		# Exibe os Minutos
	addi $2, $0, 1
	syscall
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $10		# Exibe os Segundos
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	