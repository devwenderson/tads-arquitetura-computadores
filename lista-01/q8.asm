.text
main:	addi $2, $0, 5		# horas
	syscall
	add $8, $0, $2		# $8 = horas
	
	addi $2, $0, 5		# minutos
	syscall
	add $9, $0, $2		# $9 = minutos
	
	addi $2, $0, 5		# Segundos
	syscall
	add $10, $0, $2		# $10 = segundos
	
	addi $11, $0, 3600
	addi $12, $0, 60
	
	mul  $13, $8, $11	# Conversão de Horas para Segundos
	mul $14, $9, $12	# Conversão de Minutos para segundos
	
	add $4, $13, $14
	add $4, $4, $10
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall