.data
	.word 1
	.word 0
	.word 5
	.word -2
	.word -5
	.word -7
.text
main:
	lui $10, 0x1001
	addi $8, $0, 6
for1:
	beq $8, $0, end
	
	addi $2, $0, 5
	syscall
	
	sw $2, 0($10) 		# Registra valor no endereço em $10
	addi $10, $10, 4
	addi $8, $8, -1
	
	j for1
end:
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

	addi $2, $0, 10
	syscall
	