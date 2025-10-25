.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # n
	subi $8, $8, 1 # Isso é para corrigir o número a mais que aparece no terminal
	
	addi $9, $0, 0 # anterior
	addi $10, $0, 0 # proximo
laco:
	beq $8, $0, fimLaco # while (n > 0)
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	add $10, $10, $9 # proximo = proximo + anterior
	sub $9, $10, $9 # anterior = proximo - anterior
	
	beq $10, $0, somaUm
	subi $8, $8, 1

proximoPasso:
	j laco

somaUm:
	addi $10, $0, 1
	j proximoPasso
	
fimLaco:
	addi $2, $0, 10
	syscall