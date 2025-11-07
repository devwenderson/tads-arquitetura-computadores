.data
	.word 1
	.word 0
	.word 5
	.word -2
	.word -5
	.word 7

.text
main:
	lui $10, 0x1001		# Posição 0
	lw $8, 0($10)
	
	add $4, $0, $8
	
	addi $10, $10, 4	# Posição 1
	lw $8, 0($10)
	
	add $4, $4, $8
	
	addi $10, $10, 16	# Posição 5
	lw $8, 0($10)
	
	add $4, $4, $8

	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall

	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $10, $10, -4	# Posição 4
	addi $8, $0, 100
	sw $8, 0($10)		# Salva valor de $8 na memória de endereço $10 | 0($10) = $8
	
	addi $9, $0, 6
	lui $10, 0x1001

for:
	beq $9, $0, endFor
	lw $8, 0($10)		# Carrega o valor da memória de endereço $10 para $8 | $8 = 0($10)
	
	addi $10, $10, 4	# Avança para o próximo endereço
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $9, $9, -1
	j for
	
endFor:
	addi $2, $0, 10
	syscall
	
