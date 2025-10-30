.text
main:
	addi $8, $0, 1 # K != 0

lacoPrincipal:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # K
	beq $8, $0, fimAlgoritmo
	addi $9, $0, 0 # i
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # N
	
	addi $2, $0, 5
	syscall
	add $11, $0, $2 # M	
	
laco:
	beq $9, $8, continuaLacoPrincipal # i<K
	
	addi $2, $0, 5
	syscall
	add $12, $0, $2 # X
	
	addi $2, $0, 5
	syscall
	add $13, $0, $2 # Y
	
	slt $14, $12, $10 # $14=1 Se X < N | $14=0 Se X > N
	slt $15, $13, $11 # $15=1 Se Y < M | $15=0 Se X > M	
	
	addi $9, $9, 1 # ++i
	j laco
	
continuaLacoPrincipal:
	j lacoPrincipal	
	
fimAlgoritmo:
	addi $2, $0, 10
	syscall