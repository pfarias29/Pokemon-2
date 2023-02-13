.data
#########################
###     Rocks Map     ###
#########################
# 1		= ROCHA_LATERAL
# -1 	= ROCHA_LATERAL espelhada
# 2		= CHAO_ROCHA
# 3		= ROCHA_DIAGONAL
# -3	= ROCHA_DIAGONAL espelhada
# 4		= AREIA
# 5 	= PEDRA


###########################
### Números que definem ###
###  a posição do Tile  ###
###   tamanho: 45x40    ###
###   limite: 20x15     ###
###########################
tiles_rochas: .byte 
				-1,5,5,5,5,5,5,5,1,-1,5,5,5,5,5,5,5,5,5,1,
	     	    -1,5,5,4,4,4,4,4,1,-1,2,4,2,2,2,4,4,2,2,1,
	     	    -1,4,4,5,4,5,4,4,1,-1,2,4,2,4,4,4,4,2,2,1,
	     	    -1,4,5,4,4,4,4,4,1,-1,2,2,2,4,5,5,4,2,2,1,
	    	    -1,4,4,5,4,4,4,4,1,-1,2,4,2,4,5,5,4,2,2,1,
	     	    -1,4,2,4,2,4,2,4,1,-1,2,2,4,4,4,4,4,2,2,1,
	    	    -1,2,4,4,4,4,2,2,1,-1,2,2,4,4,2,2,4,4,2,1,
	    	    -1,2,2,4,2,2,2,2,1,-1,2,4,4,4,2,2,2,2,2,1,
	    	    -1,2,2,2,2,2,2,2,3,-3,2,4,2,2,2,4,4,2,2,1,
	    	    -1,2,4,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,
	    	    -1,2,2,4,4,4,4,2,2,2,2,2,2,2,2,1,1,-1,2,1,
	     	    -1,2,4,4,4,2,2,2,2,2,2,2,2,2,2,3,-3,-3,2,1,
	    	    -1,2,2,4,2,4,2,2,2,2,2,2,2,2,2,2,2,2,2,1,
	    	    -1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,
	     	    -1,5,5,5,5,5,5,5,5,2,2,2,5,5,5,5,5,5,5,1,
	     	    -1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,
	     	    -1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,
	     	    -1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,
	      	    -1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,
	     	    -1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1
	     
	     
posicao_inicial_personagem: .word 10,14

### Informações sobre onde estarão os pokemons para lutar: x, y, tipo de pokemon ###
inimigos: .byte 0,0,0,0,0,0,0,0,0,0,0,0

.text
ROCHAS:	
	li s7, 0		#s7 define o sprite do personagem andando
	la s6, ash_costas	#s6 define o sprite do personagem
	li s8, 0		#s8 define se vai ser usada a imagem ao contrário

PREENCHE_INIMIGOS:
	li t3, 0

	la a2, inimigos
	
LOOP_PREENCHE_INIMIGOS:
	call Random
	
	li a1, 20
	call __umodsi3
	sb a0, 0(a2)
	
	li a1, 15
	call __umodsi3
	sb a0, 1(a2)
	
	li a1, 3
	call __umodsi3
	addi a0, a0, 1 		# o número tem que estar entre 1 e 3
	sb a0, 2(a2)
	
	addi t3, t3, 1
	addi a2, a2, 3
	
	li t2, 4
	bne t2, t3, LOOP_PREENCHE_INIMIGOS
### Quando terminar, o vetor de inimigos estará preenchido com as informações dos inimigos ###

INICIO_ROCHA:
	la a0, tiles_rochas
		
	li t3, 0
	li t4, 0
	
PERCORRE_TILES_ROCHA:
	li s0, 0xff0
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
	beq t0, t2, BLACK_TILE_ROCHA
	
	li t2, 1
	beq t0, t2, ROCHA_LATERAL
	
	li t2, -1
	beq t0, t2, ROCHA_LATERAL_NEG
	
	li t2, 2
	beq t0, t2, CHAO_ROCHA
	
	li t2, 3
	beq t0, t2, ROCHA_DIAGONAL

	li t2, -3
	beq t0, t2, ROCHA_DIAGONAL_NEG
	
	li t2, 4
	beq t0, t2, AREIA
	
	li t2, 5
	beq t0, t2, PEDRA
	
PRE_PRINT_TILE_ROCHA:
	li t0, 0
	li t5, 0
	
	call PRINT_TILE

	addi a0, a0, 1		
	addi t3, t3, 1

	li t2, 20
	bne t2, t3, PERCORRE_TILES_ROCHA
	
	li t3, 0
	addi t4, t4, 1		#volta os tiles para a linha abaixo
	li t2, 15
	
	bne t2, t4, PERCORRE_TILES_ROCHA
	
### Se for igual, terminou de printar a tela e deve rodar o jogo ###
	j CALCULA_POSICAO_PERSONAGEM_ROCHA

PRE_PRINT_TILE_INVERSO_ROCHA:
	li t0, 0
	li t5, 0
	
	addi s0, s0, 15
	call PRINT_TILE_INVERSO
	
	addi a0, a0, 1		
	addi t3, t3, 1
	
	li t2, 20
	bne t2, t3, PERCORRE_TILES_ROCHA
	
	li t3, 0
	addi t4, t4, 1		#volta os tiles para a linha abaixo
	li t2, 15
	bne t2, t4, PERCORRE_TILES_ROCHA
	
### Se for igual, terminou de printar a tela e deve rodar o jogo ###
	j CALCULA_POSICAO_PERSONAGEM_ROCHA
	
BLACK_TILE_ROCHA:
	li a1, 0x00000000
	
	li t0, 0
	li t5, 0
	
PRINT_BLACK_TILE_ROCHA:	
	sw a1, 0(s0)		#frame
	
	addi t0, t0, 4
	addi s0, s0, 4
	
	li t2, 16
	bne t0, t2, PRINT_BLACK_TILE_ROCHA
	
	li t0, 0
	addi t5, t5, 1
	addi s0, s0, 304	#320-16 
	
	li t2, 16
	bne t5, t2, PRINT_BLACK_TILE_ROCHA
	
### Fim de printar o tile ###

	addi a0, a0, 1		
	addi t3, t3, 1

	li t2, 20
	bne t2, t3, PERCORRE_TILES_ROCHA
	
	li t3, 0
	addi t4, t4, 1		#volta os tiles para a linha abaixo
	li t2, 15
	
	bne t2, t4, PERCORRE_TILES_ROCHA
	j CALCULA_POSICAO_PERSONAGEM_ROCHA
	
ROCHA_LATERAL:
	la a1, lateral_big_rocha
	addi a1, a1, 8
	j PRE_PRINT_TILE_ROCHA
	
ROCHA_LATERAL_NEG:
	la a1, lateral_big_rocha
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO_ROCHA
	
CHAO_ROCHA:
	la a1, chao_mapa2
	addi a1, a1, 8
	j PRE_PRINT_TILE_ROCHA
	
ROCHA_DIAGONAL:
	la a1, diagonal_big_rocha
	addi a1, a1, 8
	j PRE_PRINT_TILE_ROCHA

ROCHA_DIAGONAL_NEG:
	la a1, diagonal_big_rocha
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO_ROCHA
	
AREIA:
	la a1, areia
	addi a1, a1, 8
	j PRE_PRINT_TILE_ROCHA
	
PEDRA:
	la a1, pedra
	addi a1, a1, 8
	j PRE_PRINT_TILE_ROCHA
	
CALCULA_POSICAO_PERSONAGEM_ROCHA:
	la t2, posicao_inicial_personagem
	lw t0, 0(t2)
	lw t1, 4(t2)
	
	li s0, 0xff0
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
	
	bnez s8, CONTRARIO_ROCHA
	call PRINT_TILE
	j KEY2_ROCHA
CONTRARIO_ROCHA:
	call PRINT_TILE_INVERSO
			
KEY2_ROCHA:
	li t1,0xFF200000		# carrega o endereço de controle do KDMMIO
	lw t0,0(t1)			# Le bit de Controle Teclado
	andi t0,t0,0x0001		# mascara o bit menos significativo
   	beq t0,zero,FIM_ROCHA   	   	# Se não há tecla pressionada então vai para FIM
  	lw t2,4(t1)  			# le o valor da tecla tecla
	call MOVE_TELA_ROCHA
FIM_ROCHA:	
	j KEY2_ROCHA			# retorna
	
MOVE_TELA_ROCHA:
	li t0, 'd'
	beq t0, t2, MOVE_DIREITA_ROCHA
	
	li t0, 'a'
	beq t0, t2, MOVE_ESQUERDA_ROCHA
	
	li t0, 'w'
	beq t0, t2, MOVE_CIMA_ROCHA
	
	li t0, 's'
	beq t0, t2, MOVE_BAIXO_ROCHA
	
	ret


MOVE_DIREITA_ROCHA:
	li s8, 0
	beqz s7, DIR1_ROCHA
	la s6, ash_dir_dir
	li s7, 0
	j DIR2_ROCHA
	
DIR1_ROCHA:
	la s6, ash_dir_esq
	li s7, 1
DIR2_ROCHA:
	la a0, posicao_inicial_personagem
	lw t0, 0(a0)
	addi t0, t0, 1	
	sw t0, 0(a0)
	
	j CHECA_INIMIGOS
	
MOVE_ESQUERDA_ROCHA:
	li s8, 0
	beqz s7, ESQ1_ROCHA
	la s6, ash_esq_dir
	li s7, 0
	j ESQ2_ROCHA
	
ESQ1_ROCHA:
	la s6, ash_esq_esq
	li s7, 1
ESQ2_ROCHA:
	la a0, posicao_inicial_personagem
	lw t0, 0(a0)
	addi t0, t0, -1	
	sw t0, 0(a0)
	
	j CHECA_INIMIGOS
		
MOVE_CIMA_ROCHA:
	li s8, 0
	beqz s7, CIMA1_ROCHA
	la s6, ash_costas_dir
	li s7, 0
	j CIMA2_ROCHA
	
CIMA1_ROCHA:
	la s6, ash_costas_esq
	li s7, 1
CIMA2_ROCHA:
	la a0, posicao_inicial_personagem
	lw t0, 4(a0)
	addi t0, t0, -1	
	
	sw t0, 4(a0)
	
	j CHECA_INIMIGOS
	
MOVE_BAIXO_ROCHA:
	li s8, 0
	beqz s7, BAIXO1_ROCHA
	la s6, ash_andando_dir
	li s7, 0
	j BAIXO2_ROCHA
	
BAIXO1_ROCHA:
	la s6, ash_andando_esq
	li s7, 1
BAIXO2_ROCHA:	
	la a0, posicao_inicial_personagem
	lw t1, 0(a0)
	lw t0, 4(a0)
	addi t0, t0, 1	
	
	li t2, 15
	bge t0, t2, TALVEZ_SAI_ROCHA
	
	sw t0, 4(a0)
	
	j CHECA_INIMIGOS
	
TALVEZ_SAI_ROCHA:
	li t2, 10
	beq t1, t2, SAI_ROCHA
	
	sw t0, 4(a0)
	j INICIO_ROCHA
	
SAI_ROCHA:
	j PALLET_TOWN

CHECA_INIMIGOS:
	la a2, inimigos
	la a3, posicao_inicial_personagem
	lw s1, 0(a3)
	lw s2, 4(a3)
	
	li t3, 0
	
LOOP_CHECA_INIMIGOS:
	lb t0, 0(a2)
	
	beq t0, s1, TALVEZ_INIMIGO
	
	addi t3, t3, 1
	addi a2, a2, 3
	li t2, 4
	bne t2, t3, LOOP_CHECA_INIMIGOS
	j INICIO_ROCHA
	
TALVEZ_INIMIGO:
	lb t0, 1(a2)
	
	beq t0, s2, LUTA_INIMIGO
	
	addi t3, t3, 1
	addi a2, a2, 3
	li t2, 4
	bne t2, t3, LOOP_CHECA_INIMIGOS
	j INICIO_ROCHA
	
LUTA_INIMIGO:
	li a7, 1
	li a0, -1
	ecall
	
	li a7, 10
	ecall
	
	 



