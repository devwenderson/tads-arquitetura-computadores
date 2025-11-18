.data
.word 0x00ffffff 0x0000aaff  # 0x00RRGGBB

.text
main:
	lui $8, 0x1001 # Endereço base 0x10010000
	addi $8, $8, 4
	lw $11, 0($8)
	lui $8, 0x1001
	addi $9, $0, 8192
desenhaCeu:
	beq $9, $0, endDesenhaCeu
	sw $11, 0($8)
	addi $8, $8, 4	
	addi $9, $9, -1
	j desenhaCeu
endDesenhaCeu:
	lui $8, 0x1001
	ori $11, $0, 0x00ffffff
	addi $8, $8, 4160
	addi $9, $0, 10
desenhaNuvem:
	beq $9, $0, endDesenhaNuvem
	sw $11, 0($8)
	addi $8, $8, 4
	addi $9, $9, -1
	j desenhaNuvem
endDesenhaNuvem:
	addi $2, $0, 10
	syscall