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
# Saída:                                   #
#        void                              #
# Usa (sem preservar):                     #   
#	$17: endereço local dos pixels     #
#	$18: cor local                     #
#                                          #
# De uma linha para outra soma 512         #
#                                          #
############################################
desenhaMordecai:
	add $17, $0, $4 # endereço local dos pixels
	ori $18, $0, 0x0000 # cor local

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
	
	ori $18, $0, 0x639b
	sll $18, $18, 8
	ori $18, $18, 0xff 
	
	#### A PARTIR DAQUI É A COLORAÇÃO DO MORDECAI ####
	# INÍCIO DO TOPO DA CABEÇA
	# DAQUI PARA BAIXO TEM UMA REPETIÇÃO DE SOMAS
	sw $18, 1556($17) # Lateral interna esquerda
	sw $18, 1560($17)
	sw $18, 2068($17) # Lateral interna esquerda
	sw $18, 2072($17)
	sw $18, 2076($17)
	sw $18, 2580($17)
	sw $18, 2584($17)
	sw $18, 2588($17)
	sw $18, 2592($17) 
	sw $18, 3092($17) # Lateral interna esquerda
	sw $18, 3096($17)
	sw $18, 3100($17)
	sw $18, 3104($17)
	sw $18, 3108($17)
	sw $18, 3084($17)
	sw $18, 3596($17) # Lateral interna esquerda
	sw $18, 3600($17)
	sw $18, 3604($17)
	sw $18, 3608($17)
	sw $18, 3612($17)
	sw $18, 3616($17)
	sw $18, 4108($17) # Lateral interna esquerda
	sw $18, 4112($17)
	sw $18, 4116($17)
	sw $18, 4120($17)
	sw $18, 4124($17)
	sw $18, 4616($17) # Lateral interna esquerda
	sw $18, 4620($17)
	sw $18, 4624($17)
	sw $18, 4628($17)
	sw $18, 4632($17)
	sw $18, 4636($17)
	sw $18, 5128($17) # Lateral interna esquerda
	sw $18, 5132($17)
	sw $18, 5136($17)
	sw $18, 5140($17)
	sw $18, 5144($17)
	sw $18, 5148($17)
	sw $18, 5152($17)
	sw $18, 5640($17) # Lateral interna esquerda
	sw $18, 5644($17)
	sw $18, 5648($17)
	sw $18, 5652($17)
	sw $18, 5656($17)
	sw $18, 6156($17) # Lateral interna esquerda
	sw $18, 6160($17)
	sw $18, 6164($17)
	
	ori $18, $0, 0xffff
	sll $18, $18, 8
	ori $18, $18, 0xcc
	
	
	sw $18, 4132($17) # Lateral interna do olho esquerdo
	sw $18, 4136($17)
	sw $18, 4644($17) # Lateral interna do olho esquerdo
	
	sw $18, 4144($17) # Lateral interna do olho direito
	sw $18, 4148($17)
	sw $18, 4656($17) # Lateral interna do olho direito
	
	sw $18, 6172($17) # Lateral interna da bochecha
	sw $18, 6176($17)
	sw $18, 6180($17)
	sw $18, 6680($17) # Lateral interna da bochecha
	sw $18, 6684($17)
	sw $18, 6688($17)
	sw $18, 6692($17)
	sw $18, 6696($17)
	sw $18, 7188($17) # Lateral interna da bochecha
	sw $18, 7192($17)
	sw $18, 7196($17)
	sw $18, 7200($17)
	sw $18, 7204($17)
	sw $18, 7208($17)
	# FIM DA CABEÇA
	
	# PINTURA DA BOCA
	ori $18, $0, 0x847e
	sll $18, $18, 8
	ori $18, $18, 0x87	
	
	sw $18, 5676($17) # Lateral interna da boca
	sw $18, 5680($17)
	sw $18, 5684($17)
	sw $18, 5688($17)
	sw $18, 5692($17)
	sw $18, 5696($17)
	sw $18, 5700($17)
	sw $18, 5704($17)
	sw $18, 6188($17) # Lateral interna da boca
	sw $18, 6192($17)
	sw $18, 6196($17)
	sw $18, 6200($17)
	# FIM PINTURA DA BOCA	
	jr $31
