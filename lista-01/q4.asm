.text
main:	addi $2, $0, 5		# n1
	syscall
	add $8, $0, $2		# $8 = n1
	addi $2, $0, 5		# n2
	syscall
	add $9, $0, $2		# $9 = n2
	add $9, $9, $8		# $9 = n1 + n2
	addi $10, $0, 2		# $10 = 2
	div $9, $10
	mflo $4
	addi $2, $0, 1
	syscall
	
	add $2, $0, 10
	syscall
	