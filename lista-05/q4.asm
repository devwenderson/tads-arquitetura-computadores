.data

.text
main:
	lui $10, 0x1001
	addi $8, $0, 10
	
for1:
	beq $8, $0, endFor1
	
	addi $2, $0, 5
	syscall
	
	sw $2, 0($10)		# Salva o valor de $2 no endereço de $10
	addi $10, $10, 4	# Avança para o próximo endereço
	
	addi $8, $8, -1
	j for1

endFor1:
	lui $10, 0x1001
	addi $8, $0, 10
	addi $11, $0, 0		# Quantidade de números par
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
for2:
	beq $8, $0, endFor2
	
	lw $9, 0($10)		# Carrega o valor do endereço $10 para $9 | $9 = 0($10)
	
	andi $12, $9, 1
	beq $12, $0, somaPar
	
proximoPassoFor2:
	addi $10, $10, 4	# Próximo endereço
	addi $8, $8, -1
	j for2

somaPar:
	addi $11, $11, 1
	j proximoPassoFor2

endFor2:
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall