.text
main:
	# int soma = 0;
	# int n = 0;
	# while (n >= 0) {
	#   cin >> n;
	#   soma = soma + n;	
	# }
	# cout << soma << endl;
	
	addi $8, $0, 0		# soma
	addi $9, $0, 0		# n
	
laco:
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	slt $10, $9, $0		# while ($9 >= $0)
	bne $10, $0, fimLaco
	
	add $8, $8, $9
	j laco

fimLaco:
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall