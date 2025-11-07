.data
	.word 23
	.word 2
	.word 3
	.word 4
	.word 10
	.word 6
	.word 7
	.word 8
	.word 9
	.word -3
.text
main:
	lui $10, 0x1001
	addi $8, $0, 10
	lw $9, 0($10)		# Suposto maior
	lw $11, 4($10)		# Suposto menor
	
for1:
	beq $8, $0, endFor1
	
	addi $2, $0, 5
	syscall
	
	sw $2, 0($10)
	
	addi $10, $10, 4
	addi $8, $8, -1
	j for1
	
endFor1:
	lui $10, 0x1001
	addi $8, $0, 10
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall

for2:
	beq $8, $0, endAlgoritmo
	
	lw $12, 0($10)
	slt $13, $9, $12	# $13=1 se $9<$12
	beq $13, 1, trocaMaior
	
	slt $13, $12, $11	# $13=1 se $12<$11
	beq $13, 1, trocaMenor
	 
proximoPassoFor2:
	addi $10, $10, 4	# Próximo endereço			
	addi $8, $8, -1
	j for2

trocaMaior:
	add $9, $0, $12
	j proximoPassoFor2

trocaMenor:
	add $11, $0, $12
	j proximoPassoFor2

endAlgoritmo:
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	