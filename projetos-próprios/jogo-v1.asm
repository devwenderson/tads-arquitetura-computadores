.data
.word 0x00000000 # PRETO
.word 0x00639bff # AZUL CLARO
.word 0x00ffffff # BRANCO
.word 0x001d2e97 # AZUL MARINHO
.word 0x00847e87 # CINZA


.text
main:
	lui $4, 0x1001
	jal desenhaFundo
	
	lui $4, 0x1001
	addi $8, $0, 16
# TENTATIVA DE FAZER O OBJETO ANDAR
forAndar:
	beq $8, $0, fim
	jal desenhaMordecai
	jal desenhaFundo
	add $4, $4, 4
	addi $8, $8, -1
	j forAndar
	
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

############################################
# === Rotina para desenhar o Mordecai ===  #
# Entradas:                                #	 				
#	$4: endereço de início do desenho  #
# Saída: 
#        void                              #
# Usa (sem preservar):                     #   
#	$16: alcance do laço               #
#	$17: endereço local dos pixels     #
#	$18: cor local                     #
#
# De uma linha para outra soma 128
#
#
#
############################################
desenhaMordecai:
	add $17, $0, $4 # endereço local dos pixels
	ori $18, $0, 0x00000000 # cor local

	# INÍCIO DO TOPO DA CABEÇA
	sw $18, 16($17)
	sw $18, 528($17)
	sw $18, 532($17)
	sw $18, 1040($17) # Lateral esquerda
	sw $18, 1044($17)
	sw $18, 1048($17)
		
	# DAQUI PARA BAIXO TEM UMA REPETIÇÃO DE SOMAS
	sw $18, 1552($17) # Lateral esquerda (+512)
	sw $18, 1564($17) # (+4)
	sw $18, 2064($17) # Lateral esquerda (+512)
	sw $18, 2080($17) # (+4)
	sw $18, 2576($17) # Lateral esquerda (+512)
	sw $18, 2596($17) # (+4)
	sw $18, 3088($17) # Lateral esquerda (+512)
	sw $18, 3112($17) # (+4)
	sw $18, 3600($17) # Lateral esquerda (+512)
	sw $18, 3628($17) # (+4)
	sw $18, 4112($17) # Lateral esquerda (+512)
	sw $18, 4144($17) # (+4) 
	# FIM DO TOPO DA CABEÇA
	
	jr $31
