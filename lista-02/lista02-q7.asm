.text
main:	
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 400
	addi $10, $0, 100
	addi $11, $0, 4
	
	# $8 = ano
	
	div $8, $9
	mfhi $9
	
	div $8, $10
	mfhi $10
	
	div $8, $11
	mfhi $11
	
	# $9 = ano % 400
	# $10 = ano % 100
	# $11 = ano % 4	
	
	sub $9, $0, $9
	srl $9, $9, 31
	xori $9, $9, 1
	
	sub $10, $0, $10
	srl $10, $10, 31
	
	sub $11, $0, $11
	srl $11, $11, 31
	xori $11, $11, 1
	
	and $10, $10, $11
	or $9, $9, $10
	
	beq $9, $0, naoBissexto
	
simBissexto:	
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall	
	j fim
	
naoBissexto:
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall	
	
fim:	
	addi $2, $0, 10
	syscall
	
	