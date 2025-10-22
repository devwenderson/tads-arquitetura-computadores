.text
main:
	# $11: maior
	# $12: menor
	
	addi $8, $0, 1
	addi $9, $0, 1
laco:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	beq $8, $0, n1IgualZero
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	beq $9, $0, n2IgualZero
	
	slt $10, $9, $8 # Se $9 < $8, $10 = 1 | $10 = 0 se $9 > $8
	bne $10, $0, n1Maior
	
	add $11, $0, $9
	add $12, $0, $8
	j laco

n1Maior:
	add $11, $0, $8
	add $12, $0, $9
	
	j laco

n1IgualZero:
	j fimLaco
n2IgualZero:
	j fimLaco

fimLaco:
	addi $4, $0, 'M'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'm'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall	