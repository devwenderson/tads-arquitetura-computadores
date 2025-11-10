.text
main:
    # int n = 8;
    # int a[n] = {3, 1, -2, 5, 7, 10, 0, 2};
    # int maior_soma = a[0] + a[1];
    # int pos = 0;
    # int x, y;
    
    # for (int i=0; i<n-1; i++) {
    #    for (int j=i+1; j<i+2; j++) {
    #         if (a[i] + a[j] > maior_soma) {
    #             maior_soma = a[i] + a[j];
    #             pos = i;
    #             x = a[i];
    #             y = a[j];
    #        }
    #     }
    # }

    # cout << maior_soma << "\n";
    # cout << pos << "\n";
    # cout << "X: " << x << " " << "Y: " << y << "\n";
    	addi $8, $0, 10
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
	addi $8, $0, 10	
	
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
	addi $8, $0, 9 # n - 1
	addi $10, $0, 0 # i
	
	lw $11, 0($9)
	lw $12, 4($9)
	add $11, $11, $12 # maior_soma
	
	lui $9, 0x1001
forI:
	beq $10, $8, endForI
	
	add $15, $10, 1 # j=i+1
	add $16, $10, 2 # i+2
	
forJ:	
	beq $15, $16, proximoPassoForI # j < i+2
	
	sll $14, $10, 2 # indice i
	sll $13, $15, 2 # indice j
	
	add $9, $9, $14 
	lw $24, 0($9) # a[i]
	lui $9, 0x1001
	
	add $9, $9, $13
	lw $25, 0($9) # a[j]
	lui $9, 0x1001
	
	add $24, $24, $25
	slt $25, $11, $24
	bne $25, $0, trocaMaior

proximoPassoForJ:	
	addi $15, $15, 1
	j forJ
	
proximoPassoForI:	
	addi $10, $10, 1
	j forI
	
trocaMaior:
	add $11, $0, $24 # Maior soma
	add $17, $0, $8 # posicao do primeiro numero do par
	j proximoPassoForJ
	
endForI:
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'p'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $17
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall

	addi $2, $0, 10
	syscall
    
    
    
    
