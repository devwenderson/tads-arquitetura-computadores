.text
main:
	######################################################
	# ALUNOS:                                            #
	# 	Wenderson da Silva                           #
	#	Ana Barbosa                                  #
	######################################################
	# $8: n
	# $25: n
	# $9: endereço
	# $10: i
	# $15: j
	# $11: maior_soma
	# $12: soma_atual
	# $13: qtd
	# $14: pos
	# $16: a_qtd
	# $19: inidice i
	# $22: vet[i]
	# $21: vet[j]
	
    	addi $2, $0, 5 # n
    	syscall
    	
    	add $8, $0, $2 # n
    	add $25, $0, $2 # copia de n
    	
    	lui $9, 0x1001
for1:
	beq $8, $0, endFor1
	
	addi $2, $0, 5
	syscall
	
	sw $2, 0($9)
	addi $9, $9, 4		# Próximo endereço
	
	addi $8, $8, -1
	j for1

endFor1:    
	lui $9, 0x1001
	add $8, $0, $25	
	
forImprimeSeq:
	beq $8, $0, endForImprimeSeq
	
	lw $4, 0($9)
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $9, $9, 4	
	addi $8, $8, -1	
	j forImprimeSeq			
	
endForImprimeSeq:	
	lui $9, 0x1001
	add $8, $0, $25 # n
	addi $10, $0, 0 # i = 0
	addi $13, $0, 1 # qtd
	addi $14, $0, 0 # pos	
	
	lw $11, 0($9) # maior_soma = vet[0]
forI:
	beq $10, $8, endForI # for (i=0; i<n; i++)	
	addi $15, $10, 1 # j=i+1
	sll $19, $10, 2 # indice i
	add $9, $9, $19
	lw $22, 0($9) # $22 = vet[i]
	lui $9, 0x1001
	add $12, $0, $22 # $12 = soma_atual
	addi $16, $0, 1 # a_qtd
	add $14, $0, $10 # pos = i
forJ:	
	beq $15, $25, proximoPassoForI # for (j=i+1; j<n; j++)
	
	sll $18, $15, 2 # indice j
	add $9, $9, $18
	lw $21, 0($9) # vet[j]
	lui $9, 0x1001
	add $12, $12, $21 # soma_atual = soma_atual + vet[j]
	addi $16, $16, 1 # a_qtd++
	
	slt $20, $11, $12 # if (maior_soma < soma_atual)
	bne $20, $0, trocaMaior 

proximoPassoForJ:
	addi $15, $15, 1
	j forJ
	
proximoPassoForI:	
	addi $10, $10, 1
	j forI
	
trocaMaior:
	add $11, $0, $12 # Maior soma
	add $13, $0, $16
	j proximoPassoForJ
	
endForI:
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11 # cout << maior_soma;
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
		
	add $4, $0, $14 # cout << pos;
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $13 # cout << qtd;
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall

	addi $2, $0, 10
	syscall
    
    
    
    
