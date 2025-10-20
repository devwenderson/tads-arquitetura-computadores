.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2	# Início do Intervalo
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # Fim do intervalo
	
	addi $9, $9, 1 # Soma 1 para exibir o fim do intervalo
	 
imprimePares:
	beq $8, $9, fimLaco
	
	andi $11, $8, 1	# Verifica se $8 é par
	beq $11, $0, imprimePar	# $11 = 0 -> $9 é par
	
	beq $0, $0, proximoPasso # Outra forma de criar um jump

imprimePar:
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
proximoPasso:
	addi $8, $8, 1
	j imprimePares

fimLaco:	
	addi $2, $0, 10
	syscall
