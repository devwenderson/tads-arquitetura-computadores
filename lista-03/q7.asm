.text
main:
	# int n1 = 1;
	# int n2 = 1;
	# int soma = 0;
	# while (n1 != 0 and n2 != 0) {
	#   cin >> n1;
	#   cin >> n2;
	#   
	#   // VERIFICAÇÃO
	#   if ( n1 > 0 ) soma = soma + n1;
	#   if ( n2 > 0 ) soma = soma + n2;
	#   
	#   // if (n1 XOR 1 == 1) break 
	#   // if (n2 XOR 1 == 1) break
	#   
	# }

	addi $25, $0, 0		# soma
laco:	
	addi $2, $0, 5
	syscall
	add $8, $0, $2		# n1

	addi $2, $0, 5
	syscall
	add $9, $0, $2		# n2
	
	beq $8, $0, n1IgualZero
	beq $9, $0, n2IgualZero
	
verificaN1:
	srl $10, $8, 31
	beq $10, $0, somaN1

verificaN2:
	srl $11, $9, 31
	beq $11, $0, somaN2
	j laco

somaN1:
	add $25, $25, $8
	j verificaN2
somaN2:
	add $25, $25, $9
	j laco

n1IgualZero:
	j fimLaco
	
n2IgualZero:
	j fimLaco

fimLaco:
	add $4, $0, $25
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'F'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'M'
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall