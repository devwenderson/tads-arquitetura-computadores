.text
main:
	addi $9, $0, 0
	addi $10, $0, 10

imprimeNumero:
	beq $9, $10, fimLaco
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $9, $9, 1
	j imprimeNumero
fimLaco:
	addi $2, $0, 10
	syscall