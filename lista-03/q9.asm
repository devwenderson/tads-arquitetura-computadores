.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # qtd de numeros
	addi $9, $0, 0 # Variável de controle
	addi $10, $0, 0 # maior
	addi $11, $0, 0	# qtd de vezes que o maior foi lido
laco:
	beq $9, $8, fimLaco

	addi $2, $0, 5
	syscall
	add $24, $0, $2
	
	slt $12, $10, $24 # $12 = 0 se $24 > $10
	bne $12, $0, trocaMaior
	j proximoPasso

trocaMaior:
	add $10, $0, $24
	addi $11, $11, 1
	
proximoPasso:
	addi $9, $9, 1
	j laco
	
fimLaco:
	addi $4, $0, 'M'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'Q'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'T'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall

	addi $2, $0, 10
	syscall