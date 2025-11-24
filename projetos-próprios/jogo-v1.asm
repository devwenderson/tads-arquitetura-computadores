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
	jal desenhaMordecai
	addi $8, $0, 16
	
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
	# FIM DO TOPO DA CABEÇA
	
	sw $18, 2572($17)
	sw $18, 3080($17)
	sw $18, 3592($17)
	sw $18, 4104($17)
	sw $18, 4612($17)
	sw $18, 5124($17)
	sw $18, 5636($17)
	sw $18, 6152($17)
	sw $18, 6668($17)
	sw $18, 6672($17)
	sw $18, 7184($17)
	sw $18, 7700($17)
	sw $18, 7704($17)
	sw $18, 7708($17)
	sw $18, 7712($17)
	sw $18, 7716($17)
	sw $18, 7720($17)
	sw $18, 7212($17)
	sw $18, 6704($17)
	sw $18, 6708($17)
	sw $18, 6712($17)
	sw $18, 6204($17)
	sw $18, 6208($17)
	sw $18, 6212($17)
	sw $18, 6216($17)
	sw $18, 5708($17)
	sw $18, 5192($17)
	sw $18, 5188($17)
	sw $18, 5184($17)
	sw $18, 5180($17)
	sw $18, 5176($17)
	sw $18, 5172($17)
	sw $18, 5168($17)
	sw $18, 5164($17)
	
	sw $18, 5672($17) # Cantinho da boca
	sw $18, 5668($17)
	sw $18, 5664($17)
	sw $18, 5660($17)
	sw $18, 6168($17)
	sw $18, 6676($17)
	sw $18, 6184($17)
	sw $18, 6700($17)
	
	# Meio dos olhos
	sw $18, 4652($17) 
	sw $18, 4140($17)
	sw $18, 3628($17)
	# Fim do Meio dos olhos
	
	# Olho direito
	sw $18, 3632($17)
	sw $18, 3636($17)
	sw $18, 4152($17)
	sw $18, 4664($17)
	sw $18, 4660($17)
	# Fim do Olho direito
	
	# Olho esquerdo
	sw $18, 3624($17)
	sw $18, 3620($17)
	sw $18, 4128($17)
	sw $18, 4640($17)
	sw $18, 5156($17)
	sw $18, 5160($17)
	sw $18, 4648($17)
	# Fim do Olho esquerdo
	
	
	
	
	jr $31
