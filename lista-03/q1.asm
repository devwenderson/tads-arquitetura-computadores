.text
main:
	addi $10, $0, 10
	addi $8, $0, 1
	addi $9, $0, 3
	
test:
	beq, $8, $10, fimLaco
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $9, $9, 3
	addi $8, $8, 1
	j test
fimLaco:
	addi $2, $0, 10
	syscall