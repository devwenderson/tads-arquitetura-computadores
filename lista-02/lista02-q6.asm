.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $10, $0, 65
	addi $11, $0, 40
	
	# $8 = idade
	# $9 = tempo de serviço
	# $10 = idade para aposentar
	# $11 = tempo de serviço para aposentar
	
	slt $12, $8, $10 # se ($8 < $10) -> $12 = 1. Senão $12 = 0
	beq $12, $0, aposentaPelaIdade
	
	slt $12, $9, $11 # se ($9 < $11) -> $12 = 1. Senão $12 = 0
	beq $12, $0, aposentaPeloServico
	
	addi $10, $0, 59
	addi $11, $0, 34
	
	slt $12, $10, $8 # se ($10 < $8) -> $12 = 1. Senão, $12 = 0
	slt $13, $11, $9 # se ($11 < $9) -> $13 = 1. Senão, $13 = 0
	
	# $12 = 1 = Maior ou igual a 60 anos
	# $13 = 1 = Maior ou igual a 35 anos
	
	and $12, $12, $13
	addi $13, $0, 1
	beq $12, $13, aposentaPelaIdadeEServico
	
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	j fim

aposentaPelaIdade:
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	j fim

aposentaPeloServico:
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	j fim

aposentaPelaIdadeEServico:
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	j fim
fim:
	addi $2, $0, 10
	syscall
	
	