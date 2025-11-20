.text
main:
	addi $2, $0, 5
	syscall
	add $4, $0, $2
	jal dobraNum # Salva a instrução abaixo em $31

exibeNumero:
	add $4, $0, $2
	addi $2, $0, 1
	syscall

fimAlgoritmo:
	addi $2, $0, 10
	syscall
	
# ###############################
# Rotina para dobrar um número  #
# Entrada: $4                   #
# Saída $2                      #
# ###############################
dobraNum:
	addi $2, $0, 2 # $2 = 2
	mul $2, $2, $4 # $2 = 2 * $4
	jr $31 # Retorna para a instrução em $31