.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # a
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # b
	
	addi $10, $0, 0 # r
	
	# function gcd(a, b) {
	#  var R;
	#  while ((a % b) > 0)  {
	#    R = a % b;
	#    a = b;
	#    b = R;
	#  }
	#  return b;
	#}
       
laco:
	div $8, $9 # (a / b)
	mfhi $10 # r = (a % b)
	beq $10, $0, fimLaco
	
	add $8, $0, $9 # a = b
	add $9, $0, $10 # b = r
	
	j laco
	 
fimLaco:
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall