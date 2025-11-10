.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # n
	
	# Verificação do número inserido
	addi $25, $0, 10 
	slt $24, $25, $8
	beq $24, 1, erro
	
	slt $24, $8, $0
	beq $24, 1, erro
	
	beq $8, $0, erro 
	# Fim da verificação
	
	addi $9, $0, 1 # i
	addi $10, $0, 0 # j
	addi $13, $0, 0 # k
	
	addi $12, $8, 1 # (n + 1) para representar i <= n no laço
	addi $11, $0, 0 # valor a ser exibido
	
	subi $24, $8, 1
	
	# Explicação:
	# O laço I é responsável pela exibição das linhas
	# O laço K é responsável pela exibição dos espaços, que causam a ilusão do alinhamento à direita
	# O laço J é responsável por exibir os números
	
forI:
	beq $9, $12, fimAlgoritmo
	
forK:
	beq $13, $24, forJ
	
	add $4, $0, 32
	addi $2, $0, 11
	syscall
	
	addi $13, $13, 1
	j forK
forJ:
	beq $10, $9, proximoPassoForI	
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $10, $10, 1
	j forJ
	
proximoPassoForI:
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
		
	addi $11, $11, 1
	
	addi $10, $0, 0 # reinicia o contador J
	addi $13, $0, 0 # reinicia o contador k
	addi $9, $9, 1 # ++i
	subi $24, $24, 1 # limitador do forK
	j forI
	
erro:
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'A'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'O'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'C'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'O'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'I'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'G'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'O'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'C'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'O'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'M'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'E'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'E'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'U'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'M'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'E'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'R'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'O'
	addi $2, $0, 11
	syscall
	
	j fimAlgoritmo
	
fimAlgoritmo:
	addi $2, $0, 10
	syscall
