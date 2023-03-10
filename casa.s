.data
##############################
###    Interior da casa   ####
##############################
# 0 	= chao
# 2 	= caixa
# 3 	= tapete 
# -3 	= tapete espelhado
# 5 	= tile preto

tiles_casa: .byte 
	5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
	5,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
	5,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
	5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,0,0,5,
	5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
	5,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,0,0,5,
	5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
	5,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
	5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,5,
	5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,5,
	5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
	5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,
	5,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,5,
	5,2,2,2,0,0,0,0,0,3,-3,0,0,0,0,0,0,2,2,5,
	5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5
		  
posicao_inicial_casa: .word 9,13
	
.text
CASA:
	li s7, 0			#s7 define o sprite do personagem andando
	la s6, ash_costas		#s6 define o sprite do personagem
	li s8, 0			#s8 define se vai ser usada a imagem ao contrário
INICIO:
	la a0, tiles_casa
	
	li t3, 0
	li t4, 0

PERCORRE_TILES_CASA:
	li s0, 0xFF0
	slli s0, s0, 20

### Calcula a posição no display ###
	li t2, 16
	mul t5, t3, t2
	add s0, s0, t5
	
	mul t5, t2, t4
	li t2, 320
	mul t5, t5, t2
	add s0, s0, t5
####################################
	 	
	lb t0, 0(a0)
	
	li t2, 0
	beq t0, t2, CHAO
	
	li t2, 2
	beq t0, t2, CAIXA
	
	li t2, 3
	beq t0, t2, TAPETE
	
	li t2, -3
	beq t0, t2, TAPETENEG
	
	li t2, 5
	beq t0, t2, BLACK_TILE_CASA
	
	j KEY2_CASA
	
BLACK_TILE_CASA:
	li a1, 0x00000000
	
	li t0, 0
	li t5, 0
	
PRINT_BLACK_TILE_CASA:	
	sw a1, 0(s0)		#frame
	
	addi t0, t0, 4
	addi s0, s0, 4
	
	li t2, 16
	bne t0, t2, PRINT_BLACK_TILE_CASA
	
	li t0, 0
	addi t5, t5, 1
	addi s0, s0, 304	#320-16 
	
	li t2, 16
	bne t5, t2, PRINT_BLACK_TILE_CASA
	
### Fim de printar o tile ###

	addi a0, a0, 1		
	addi t3, t3, 1

	li t2, 20
	bne t2, t3, PERCORRE_TILES_CASA
	
	li t3, 0
	addi t4, t4, 1
	li t2, 15
	
	bne t2, t4, PERCORRE_TILES_CASA
	j PRINT_PROF
	
PRE_PRINT_TILE_CASA:
	li t0, 0
	li t5, 0
	
	call PRINT_TILE

	addi a0, a0, 1		
	addi t3, t3, 1

	li t2, 20
	bne t2, t3, PERCORRE_TILES_CASA
	
	li t3, 0
	addi t4, t4, 1
	li t2, 15
	
	bne t2, t4, PERCORRE_TILES_CASA
	
### Se for igual, terminou de printar a tela e deve rodar o jogo ###
	j PRINT_PROF

PRE_PRINT_TILE_INVERSO_CASA:
	li t0, 0
	li t5, 0
	
	addi s0, s0, 15
	call PRINT_TILE_INVERSO
	
	addi a0, a0, 1		
	addi t3, t3, 1
	
	li t2, 20
	bne t2, t3, PERCORRE_TILES_CASA
	
	li t3, 0
	addi t4, t4, 1
	li t2, 15
	bne t2, t4, PERCORRE_TILES_CASA
	
### Se for igual, terminou de printar a tela e deve rodar o jogo ###
	j PRINT_PROF
	
CHAO:
	la a1, chao
	addi a1, a1, 8
	j PRE_PRINT_TILE_CASA
	
PROFESSOR:
	la a1, professor
	addi a1, a1, 8
	j PRE_PRINT_TILE_CASA
	
CAIXA:
	la a1, caixa
	addi a1, a1, 8
	j PRE_PRINT_TILE_CASA
	
TAPETE:
	la a1, tapete
	addi a1, a1, 8
	j PRE_PRINT_TILE_CASA
	
TAPETENEG:
	la a1, tapete
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO_CASA
	
KEY2_CASA:
	li t1,0xFF200000		# carrega o endereço de controle do KDMMIO
	lw t0,0(t1)			# Le bit de Controle Teclado
	andi t0,t0,0x0001		# mascara o bit menos significativo
   	beq t0,zero,FIM_CASA 	   	# Se não há tecla pressionada então vai para FIM
  	lw t2,4(t1)  			# le o valor da tecla tecla
	call MOVE_PERSONAGEM

FIM_CASA:	
	j KEY2_CASA

MOVE_PERSONAGEM:
	li t0, 'a'
	beq t0, t2, TROCA_ESQ
	
	li t0, 'd'
	beq t0, t2, TROCA_DIR
	
	li t0, 'w'
	beq t0, t2, TROCA_CIMA
	
	li t0, 's'
	beq t0, t2, TROCA_BAIXO

	li t0, 'p'
	beq t0, t2, DIALOGO

	li t0, 'i'
	li s5, 1		#s9 = guarda o mapa que estava antes de abrir o inventário
	beq t0, t2, ABRE_INVENTARIO
	
	ret
	
TROCA_ESQ:
	li s8, 0
	beqz s7, ESQ0
	la s6, ash_esq_dir
	li s7, 0
	j ESQ
ESQ0:	
	la s6, ash_esq_esq
	li s7, 1
		
ESQ:
	la a0, posicao_inicial_casa
	lw t1, 0(a0)
	addi t1, t1, -1
	
	lw t2, 4(a0)

	li t3, 20
	mul t2, t2, t3
	
	la a1, tiles_casa
	add a1, a1, t1
	add a1, a1, t2
	
	lb t5, 0(a1)
	bnez t5, TALVEZ_PARE_HORIZONTAL_CASA
	
	sw t1, 0(a0)

	j INICIO
	
TROCA_DIR:
	li s8, 0
	beqz s7, DIR0
	la s6, ash_dir_dir
	li s7, 0
	j DIR
DIR0:	
	la s6, ash_dir_esq
	li s7, 1
	
DIR:
	la a0, posicao_inicial_casa
	lw t1, 0(a0)
	addi t1, t1, 1
	
	lw t2, 4(a0)

	li t3, 20
	mul t2, t2, t3
	
	la a1, tiles_casa
	add a1, a1, t1
	add a1, a1, t2
	
	lb t5, 0(a1)
	bnez t5, TALVEZ_PARE_HORIZONTAL_CASA
	
	sw t1, 0(a0)
	
	j INICIO
	
TROCA_CIMA:
	li s8, 0
	beqz s7, CIMA0
	la s6, ash_costas_dir
	li s7, 0
	j CIMA

CIMA0:	
	la s6, ash_costas_esq
	li s7, 1

CIMA:
	la a0, posicao_inicial_casa
	lw t1, 4(a0)
	addi t1, t1, -1
	
	lw t2, 0(a0)

	li t3, 20
	mul t3, t1, t3
	
	la a1, tiles_casa
	add a1, a1, t3
	add a1, a1, t2
	
	lb t5, 0(a1)
	bnez t5, TALVEZ_PARE_VERTICAL_CASA
	
	sw t1, 4(a0)
	
	j INICIO
	
TROCA_BAIXO:
	li s8, 0
	beqz s7, BAIXO0
	la s6, ash_andando_dir
	li s7, 0
	j BAIXO

BAIXO0:	
	la s6, ash_andando_esq
	li s7, 1

BAIXO:
	la a0, posicao_inicial_casa
	lw t2, 0(a0)
	lw t1, 4(a0)
	addi t1, t1, 1
	
	li t5, 14
	beq t5, t1, TALVEZ_SAI_CASA
	
	lw t2, 0(a0)

	li t3, 20
	mul t3, t1, t3
	
	la a1, tiles_casa
	add a1, a1, t3
	add a1, a1, t2
	
	lb t5, 0(a1)
	bnez t5, TALVEZ_PARE_VERTICAL_CASA
	
	sw t1, 4(a0)
	
	j INICIO
	
PRINT_PROF:
	la a1, professor
	addi a1, a1, 8
	
	li s0, 0xFF0
	slli s0, s0, 20
	
	li t2, 5 		#a posição do professor não muda: 5,5
	li t5, 16
	mul t2, t2, t5
	add s0, s0, t2
	
	li t5, 320
	mul t2, t2, t5
	add s0, s0, t2	
	
	mv a0, s10
	
	li t0, 0
	li t5, 0
	
	call PRINT_TILE	
		
CALCULA_POSICAO_PERSONAGEM_CASA:
	la t2, posicao_inicial_casa
	lw t0, 0(t2)
	lw t1, 4(t2)
	
	li s0, 0xFF0
	slli s0, s0, 20
	
	li t2, 16
	mul t5, t0, t2
	add s0, s0, t5
	
	mul t5, t1, t2
	li t2, 320
	mul t5, t5, t2
	add s0, s0, t5
	
	li t0, 0
	li t5, 0
	
	mv a1, s6			#s6 ficará salvo a sprite do ash
	addi a1, a1, 8
	
	bnez s8, CONTRARIO_CASA
	call PRINT_TILE
	j KEY2_CASA

CONTRARIO_CASA:
	call PRINT_TILE_INVERSO
	j KEY2_CASA

TALVEZ_SAI_CASA:
	li t5, 9
	beq t5, t2, SAI_CASA
	
	li t5, 10
	beq t5, t2, SAI_CASA
	
	lw t2, 0(a0)

	li t3, 20
	mul t3, t1, t3
	
	la a1, tiles_casa
	add a1, a1, t3
	add a1, a1, t2
	
	lb t5, 0(a1)
	bnez t5, TALVEZ_PARE_VERTICAL_CASA
	
	sw t1, 4(a0)
	
	j INICIO
							
SAI_CASA:
	j PALLET_TOWN
	
TALVEZ_PARE_HORIZONTAL_CASA:
	li t3, 3
	lb t5, 0(a1)
	bne t3, t5, TALVEZ_PARE_HORIZONTAL_CASA1
	
	sw t1, 0(a0)	
	j INICIO	
	
TALVEZ_PARE_HORIZONTAL_CASA1:
	li t3, -3
	bne t3, t5, KEY2_CASA  
	
	sw t1, 0(a0)	
	j INICIO
	
TALVEZ_PARE_VERTICAL_CASA:
	li t3, 3
	lb t5, 0(a1)
	bne t3, t5, TALVEZ_PARE_VERTICAL_CASA1
	
	sw t1, 4(a0)	
	j INICIO
	
TALVEZ_PARE_VERTICAL_CASA1:
	li t3, -3
	bne t3, t5, KEY2_CASA 
	
	sw t1, 4(a0)	
	j INICIO