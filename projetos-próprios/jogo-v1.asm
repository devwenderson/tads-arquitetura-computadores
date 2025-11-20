.text
main:
	lui $4, 0x1001
	jal desenhaFundo
fim:
	addi $2, $0, 10
	syscall

######################################
# === Rotina para desenhar fundo === #
# Entradas:                          #	 				
#	$4: endereço                 #
# Saída: void                        #
# Usa (sem preservar):               #
#	$16: alcance do laço         #
#	$17: endereço local          #
#	$18: cor local               #
######################################
desenhaFundo:
	addi $16, $0, 8192 # i
	add $17, $0, $4 # endereço local
	ori $18, $0, 0x0000cfff # cor local
for1:
	beq $16, $0, endFor1
	sw $18, 0($17)
	addi $17, $17, 4 # endereço local + 4
	addi $16, $16, -1 # i-1
	j for1
endFor1:
	jr $31 # Volta para a instrução de $31
