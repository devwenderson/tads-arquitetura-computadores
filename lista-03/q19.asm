.text
lacoPrincipal:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # K
	
	beq $8, $0, fimAlgoritmo
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # N
	
	addi $2, $0, 5
	syscall
	add $11, $0, $2 # M	
	
	addi $9, $0, 0 # i
	
laco:
	beq $9, $8, continuaLacoPrincipal # i<K
	
	addi $2, $0, 5
	syscall
	add $12, $0, $2 # X
	
	addi $2, $0, 5
	syscall
	add $13, $0, $2 # Y
	
	beq $12, $10, dv # Se X = N
	beq $13, $11, dv # Se Y = M
	slt $14, $12, $10 # $14=1 Se X < N | $14=0 Se X > N
	slt $15, $13, $11 # $15=1 Se Y < M | $15=0 Se X > M
	
	beq $14, $0, xMaior # Se X > M
	bne $14, $0, xMenor # Se X < M

proximoPasso:
	addi $9, $9, 1 # ++i
	j laco

xMaior:
	beq $15, $0, ne # $15 = 0 Se Y > M
	bne $15, $0, se	# $15 = 1 Se Y < M
	
xMenor:
	beq $15, $0, no
	bne $15, $0, so

	
continuaLacoPrincipal:
	j lacoPrincipal	

dv:
	addi $4, $0, 'D'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'V'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	j proximoPasso

ne:
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'E'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	j proximoPasso

no:
	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'O'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	j proximoPasso	
	
se:
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'E'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	j proximoPasso	

so:
	addi $4, $0, 'S'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, 'O'
	addi $2, $0, 11
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	j proximoPasso		
	
fimAlgoritmo:
	addi $2, $0, 10
	syscall
