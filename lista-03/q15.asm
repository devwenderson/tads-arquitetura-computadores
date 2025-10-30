.text
main:
#        int n;
#        std::cin >> n;
#        int valor = 0;
#        for (int i=1; i<=n; ++i){
#                for (int j=0; j<i; ++j){
#                        valor = valor + 1;
#                        std::cout << valor;
#                        std::cout << " ";
#                }
#               std::cout << "\n";
#        }



	addi $2, $0, 5
	syscall
	add $8, $0, $2  # n
	addi $8, $8, 1 	# n + 1
	
	addi $9, $0, 1	# i
	addi $10, $0, 0 # j
	addi $11, $0, 0 # valor
	
laco1:
	beq $9, $8, fimAlgoritmo # for (int i=1; i<n+1; ++i) {

laco2:
	beq $10, $9, continuaLaco1 # for (int j=0; j<i; ++j) {

	addi $11, $11, 1 # valor + 1
	add $4, $0, $11
	addi $2, $0, 1
	syscall # cout << valor;
	
	addi $4, $0, ' ' # cout << ' ';
	addi $2, $0, 11
	syscall
	
	addi $10, $10, 1 # ++j
	j laco2

continuaLaco1:

	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall # cout << 'n';
	
	addi $10, $0, 0 # REINICIA J PARA J=0
	addi $9, $9, 1 # ++i
	j laco1


fimAlgoritmo:
	addi $2, $0, 10
	syscall
	
