.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2	# Número da tabuada
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2	# Quantidade de valores
	
	addi $10, $0, 0 # Variável de controle
	
	add $20, $0, $8 # Salva o valor que será somado ao n° da tabuada
	
imprimeMultiplo:
	beq $10, $9, fimLaco # $10 != $9 -> Executa o laço
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $8, $8, $20
	addi $10, $10, 1
	j imprimeMultiplo

fimLaco:
	addi $2, $0, 10
	syscall