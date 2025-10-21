.text
main:
	# n = 0;
	# soma = 0;
	# for (i=0; i<10; ++i){
	#   cin >> num;
	#   soma = soma + n;
	# }
	
	addi $8, $0, 0		# i
	addi $9, $0, 0  	# soma
	addi $10, $0, 10	# i<10
laco:
	beq $8, $10, fimLaco
	
	addi $2, $0, 5
	syscall
	add $11, $0, $2		# n
	add $9, $9, $11		# soma = soma + n
	
	addi $8, $8, 1
	j laco

fimLaco:
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall