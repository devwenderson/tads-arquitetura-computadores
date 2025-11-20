.text
main:
	addi $2, $0, 5
	syscall
	add $4, $0, $2
	jal verificaNum
	
exibeResposta:
	add $4, $0, $2
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall

# ##################################
# Rotina para verificar um número  #
# Entrada: $4                      #
# Saída: $2                        #
# Usa (sem preservar): $8          #
# ##################################

verificaNum:
	beq $4, $0, retornaZero		# Se $4 = 0 retorna 0
	slt $8, $4, $0			# Se $4 < 0, $8 = 1
	bne $8, $0, retornaMenosUm	# Se $8 = 1, retorna -1 ($4 é negativo)
	addi $2, $0, 1 			# Caso $4 > 0
	jr $31
retornaZero:
	add $2, $0, $0
	jr $31
retornaMenosUm:
	addi $2, $0, -1
	jr $31
	










	