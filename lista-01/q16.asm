.text
main:	addi $2, $0, 5
	syscall
	
	add $8, $0, $2
	andi $8, $8, 1		# 00000 ou 00001
	addi $9, $9, -1
	mult  $9, $8
	mfhi $4
	
	addi $2, $0, 1
	syscall