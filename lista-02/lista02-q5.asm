.text
main:		addi $2, $0, 5
		syscall
		add $8, $0, $2
		
		addi $2, $0, 5
		syscall
		add $9, $0, $2
		
		addi $2, $0, 5
		syscall
		add $10, $0, $2
		
		addi $11, $0, 1
		addi $12, $0, 2
		addi $13, $0, 3
				
		# $8 = nota1
		# $9 = nota2
		# $10 = nota3
		# $11 = peso1
		# $12 = peso2
		# $13 = peso3
		
		# Multiplicação das notas
		mul $8, $8, $11
		mul $9, $9, $12
		mul $10, $10, $13
		
		# Soma das notas
		add $8, $8, $9
		add $8, $8, $10
		
		# Soma dos pesos
		add $11, $11, $12	
		add $11, $11, $13
		
		# $8 = soma das notas
		# $11 = soma dos pesos
		
		div $8, $11
		mflo $9
		
		# $9 = media
		
exibirMedia:	add $4, $0, $9
		addi $2, $0, 1
		syscall
		
		# $10 = Média de aprovação
		addi $10, $0, 60
		
		slt $11, $9, $10
		beq $11, $0, aprovado

reprovado:	addi $4, $0, 'R'
		addi $2, $0, 11
		syscall
		j fim

aprovado:	addi $4, $0, 'A'
		addi $2, $0, 11
		syscall
		
fim:		addi $2, $0, 10
		syscall				
		