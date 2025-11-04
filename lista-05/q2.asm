.data

.text
main:
	lui $10, 0x1001		# Armazena o endereço base do primeiro espaço da área de dados da memória
	addi $8, $0, 6
	
for1:
	beq $8, $0, endFor1
	
	addi $2, $0, 5
	syscall
	
	sw $2, 0($10)		# Salva o valor de $2 no endereço dentro de $10
	addi $10, $10, 4	# Avança para o próximo endereço
	addi $8, $8, -1
	
	j for1
endFor1:
	lui $10, 0x1001
	addi $8, $0, 6

for2:
	beq $8, $0, endFor2
	
	lw $4, 0($10)		# Salva no registrador $4
	addi $2, $0, 1
	syscall
	
	addi $10, $10, 4	# Avança para o próximo endereço
	addi $8, $8, -1
	
	j for2

endFor2:
	addi $2, $0, 10
	syscall