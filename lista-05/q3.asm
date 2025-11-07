.data
	.word 1
	.word 2
	.word 3
	.word 4
	.word 5
	.word 6
	.word 7
	.word 8
.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2		# indice x
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2		# indice y
	
	lui $10, 0x1001		# endereço de memória base 
	
	# A[0] -> $10 + 4 x 0
	# A[1] -> $10 + 4 x 1
	# A[2] -> $10 + 4 x 2
	
	mul $11, $8, 4		
	mul $12, $9, 4
	
	add $10, $10, $11
	lw $13, 0($10)
	lui $10, 0x1001		# endereço de memória base
	
	add $10, $10, $12
	lw $14, 0($10)
	
	add $13, $13, $14
	
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall