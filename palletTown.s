.data
#########################
###    Pallet Town    ###
#########################
# 0   	= tile preto
# 1	  	= tetoCimaUnico
# 2	  	= tetoMeioUnico
# 3 	= tetoBaixoUnico
# 4		= frenteMeioUnico
# 5 	= frenteBaixoUnico
# 6   	= tetoCimaEsquerdo
# 6   	= tetoCimaEsquerdo espelhado
# 7   	= tetoCimaMeio
# -7   	= tetoCimaMeio espelhado
# 8   	= tetoCimaDireito
# -8  	= tetoCimaDireito espelhado
# 9 	= tetoMeioEsquerdo
# -9 	= tetoMeioEsquerdo espelhado
# 10  	= tetoMeioMeio
# -10 	= tetoMeioMeio espelhado
# 11	= tetoMeioDireito
# -11	= tetoMeioDireito espelhado
# 12	= tetoBaixoEsquerdo
# -12	= tetoBaixoEsquerdo espelhado
# 13	= tetoBaixoMeio
# -13	= tetoBaixoMeio espelhado
# 14	= tetoBaixoDireito
# -14	= tetoBaixoDireito espelhado
# 15	= frenteMeioEsquerdo
# -15	= frenteMeioEsquerdo espelhado
# 16	= frenteMeioMeio
# -16	= frenteMeioMeio espelhado
# 17	= frenteMeioDireito
# -17	= frenteMeioDireito espelhado
# 18	= frenteBaixoEsquerdo
# -18	= frenteBaixoEsquerdo espelhado
# 19	= frenteBaixoMeio
# -19	= frenteBaixoMeio espelhado
# 20	= frenteBaixoDireito
# -20	= frenteBaixoDireito espelhado
# 21  	= grama
# 22  	= flor

###########################
### Números que definem ###
###  a posição do Tile  ###
###   tamanho: 45x40    ###
###   limite: 20x15     ###
###########################
tiles: .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,49,50,49,50,49,50,49,50,49,50,49,50,21,21,49,50,49,50,49,50,49,50,49,50,49,50,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,51,52,51,52,51,52,51,52,51,52,51,52,21,21,51,52,51,52,51,52,51,52,51,52,51,52,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,49,50,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,49,50,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,51,52,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,51,52,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,49,50,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,49,50,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,51,52,21,21,21,6,7,8,1,-8,-7,-6,21,21,21,21,21,21,21,21,21,21,21,21,51,52,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,49,50,21,21,21,9,10,11,2,-11,-10,-9,21,21,21,21,21,22,22,22,22,21,21,21,49,50,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,51,52,21,21,21,12,13,14,3,-14,-13,-12,21,21,21,21,21,22,22,22,22,21,21,21,51,52,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,49,50,21,21,21,15,16,17,4,-17,-16,-15,21,21,21,21,21,22,22,22,22,21,21,21,49,50,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,51,52,21,21,21,18,19,20,5,-20,-19,-18,21,21,21,21,21,21,21,21,21,21,21,21,51,52,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,49,50,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,49,50,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,51,52,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,51,52,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,49,50,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,49,50,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,51,52,21,21,21,21,21,21,21,21,21,21,21,21,21,6,7,8,1,-8,-7,-6,21,21,51,52,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,49,50,21,21,21,21,21,21,21,21,21,21,21,21,21,9,10,11,2,-11,-10,-9,21,21,49,50,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,51,52,21,21,21,22,22,22,21,21,21,21,21,21,21,12,13,14,3,-14,-13,-12,21,21,51,52,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,49,50,21,21,21,22,22,22,21,21,21,21,21,21,21,15,16,17,4,-17,-16,-15,21,21,49,50,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,51,52,21,21,21,22,22,22,21,21,21,21,21,21,21,18,19,20,5,-20,-19,-18,21,21,51,52,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,49,50,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,49,50,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,51,52,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,51,52,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,49,50,49,50,49,50,49,50,49,50,49,50,49,50,49,50,49,50,49,50,49,50,49,50,49,50,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,51,52,51,52,51,52,51,52,51,52,51,52,51,52,51,52,51,52,51,52,51,52,51,52,51,52,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	     
	     
posicao_inicial: .word 10,10
posicao_personagem: .word 7,8


.text
PALLET_TOWN:	
	li s7, 0			#s7 define o sprite do personagem andando
	la s6, ash_parado		#s6 define o sprite do personagem
	li s8, 0			#s8 define se vai ser usada a imagem ao contrário

COMECO:

### Calcula posição nos tiles ###
	la a0, posicao_inicial
	lw t0, 0(a0)
	lw t1, 4(a0)
	
	li t2, 4
	mul t0, t0, t2
	mul t1, t1, t2
	
	li t2, 45
	mul t1, t1, t2
	
	la a0, tiles
	
	srli t0, t0, 2
	srli t1, t1, 2
	
	add a0, a0, t0
	add a0, a0, t1
###################################	
	li t3, 0
	li t4, 0
	
PERCORRE_TILES:
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
	beq t0, t2, BLACK_TILE
	
	li t2, 1
	beq t0, t2, CARREGA1
	
	li t2, 2
	beq t0, t2, CARREGA2
	
	li t2, 3
	beq t0, t2, CARREGA3
	
	li t2, 4
	beq t0, t2, CARREGA4
	
	li t2, 5
	beq t0, t2, CARREGA5
	
	li t2, 6
	beq t0, t2, CARREGA6
	
	li t2, -6
	beq t0, t2, CARREGA6NEG
	
	li t2, 7
	beq t0, t2, CARREGA7
	
	li t2, -7
	beq t0, t2, CARREGA7NEG
	
	li t2, 8
	beq t0, t2, CARREGA8
	
	li t2, -8
	beq t0, t2, CARREGA8NEG
	
	li t2, 9
	beq t0, t2, CARREGA9
	
	li t2, -9
	beq t0, t2, CARREGA9NEG
	
	li t2, 10
	beq t0, t2, CARREGA10
	
	li t2, -10
	beq t0, t2, CARREGA10NEG
	
	li t2, 11
	beq t0, t2, CARREGA11
	
	li t2, -11
	beq t0, t2, CARREGA11NEG
	
	li t2, 12
	beq t0, t2, CARREGA12
	
	li t2, -12
	beq t0, t2, CARREGA12NEG
	
	li t2, 13
	beq t0, t2, CARREGA13
	
	li t2, -13
	beq t0, t2, CARREGA13NEG
	
	li t2, 14
	beq t0, t2, CARREGA14
	
	li t2, -14
	beq t0, t2, CARREGA14NEG
	
	li t2, 15
	beq t0, t2, CARREGA15
	
	li t2, -15
	beq t0, t2, CARREGA15NEG
	
	li t2, 16
	beq t0, t2, CARREGA16
	
	li t2, -16
	beq t0, t2, CARREGA16NEG
	
	li t2, 17
	beq t0, t2, CARREGA17
	
	li t2, -17
	beq t0, t2, CARREGA17NEG
	
	li t2, 18
	beq t0, t2, CARREGA18
	
	li t2, -18
	beq t0, t2, CARREGA18NEG
	
	li t2, 19
	beq t0, t2, CARREGA19
	
	li t2, -19
	beq t0, t2, CARREGA19NEG
	
	li t2, 20
	beq t0, t2, CARREGA20
	
	li t2, -20
	beq t0, t2, CARREGA20NEG
	
	li t2, 21
	beq t0, t2, CARREGA21
	
	li t2, 22
	beq t0, t2, CARREGA22

	# Arvore
	li t2, 49
	beq t0, t2, CARREGA49

	li t2, 50
	beq t0, t2, CARREGA50

	li t2, 51
	beq t0, t2, CARREGA51

	li t2, 52
	beq t0, t2, CARREGA52

	j KEY2
	
PRE_PRINT_TILE:
	li t0, 0
	li t5, 0
	
	call PRINT_TILE

	addi a0, a0, 1		
	addi t3, t3, 1

	li t2, 20
	bne t2, t3, PERCORRE_TILES
	
	li t3, 0
	addi t4, t4, 1
	addi a0, a0, 25		#volta os tiles para a linha abaixo
	li t2, 15
	
	bne t2, t4, PERCORRE_TILES
	
### Se for igual, terminou de printar a tela e deve rodar o jogo ###
	j CALCULA_POSICAO_PERSONAGEM

PRE_PRINT_TILE_INVERSO:
	li t0, 0
	li t5, 0
	
	addi s0, s0, 15
	call PRINT_TILE_INVERSO
	
	addi a0, a0, 1		
	addi t3, t3, 1
	
	li t2, 20
	bne t2, t3, PERCORRE_TILES
	
	li t3, 0
	addi t4, t4, 1
	addi a0, a0, 25		#volta os tiles para a linha abaixo
	li t2, 15
	bne t2, t4, PERCORRE_TILES
	
### Se for igual, terminou de printar a tela e deve rodar o jogo ###
	j CALCULA_POSICAO_PERSONAGEM
	
	
BLACK_TILE:
	li a1, 0x00000000
	
	li t0, 0
	li t5, 0
	
PRINT_BLACK_TILE:	
	sw a1, 0(s0)		#frame
	
	addi t0, t0, 4
	addi s0, s0, 4
	
	li t2, 16
	bne t0, t2, PRINT_BLACK_TILE
	
	li t0, 0
	addi t5, t5, 1
	addi s0, s0, 304	#320-16 
	
	li t2, 16
	bne t5, t2, PRINT_BLACK_TILE
	
### Fim de printar o tile ###

	addi a0, a0, 1		
	addi t3, t3, 1

	li t2, 20
	bne t2, t3, PERCORRE_TILES
	
	li t3, 0
	addi t4, t4, 1
	addi a0, a0, 25		#volta os tiles para a linha abaixo
	li t2, 15
	
	bne t2, t4, PERCORRE_TILES
	j CALCULA_POSICAO_PERSONAGEM


CARREGA1:
	la a1, tetoCimaUnico
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA2:
	la a1, tetoMeioUnico
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA3:
	la a1, tetoBaixoUnico
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA4:
	la a1, frenteMeioUnico
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA5:
	la a1, frenteBaixoUnico
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA6:
	la a1, tetoCimaEsquerdo
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA6NEG:
	la a1, tetoCimaEsquerdo
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
			
CARREGA7:
	la a1, tetoCimaMeio
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA7NEG:
	la a1, tetoCimaMeio
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA8:
	la a1, tetoCimaDireito
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA8NEG:
	la a1, tetoCimaDireito
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA9:
	la a1, tetoMeioEsquerdo
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA9NEG:
	la a1, tetoMeioEsquerdo
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA10:
	la a1, tetoMeioMeio
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA10NEG:
	la a1, tetoMeioMeio
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA11:
	la a1, tetoMeioDireito
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA11NEG:
	la a1, tetoMeioDireito
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA12:
	la a1, tetoBaixoEsquerdo
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA12NEG:
	la a1, tetoBaixoEsquerdo
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA13:
	la a1, tetoBaixoMeio
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA13NEG:
	la a1, tetoBaixoMeio
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA14:
	la a1, tetoBaixoDireito
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA14NEG:
	la a1, tetoBaixoDireito
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA15:
	la a1, frenteMeioEsquerdo
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA15NEG:
	la a1, frenteMeioEsquerdo
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA16:
	la a1, frenteMeioMeio
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA16NEG:
	la a1, frenteMeioMeio
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA17:
	la a1, frenteMeioDireito
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA17NEG:
	la a1, frenteMeioDireito
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA18:
	la a1, frenteBaixoEsquerdo
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA18NEG:
	la a1, frenteBaixoEsquerdo
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA19:
	la a1, frenteBaixoMeio
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA19NEG:
	la a1, frenteBaixoMeio
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA20:
	la a1, frenteBaixoDireito
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA20NEG:
	la a1, frenteBaixoDireito
	addi a1, a1, 8
	j PRE_PRINT_TILE_INVERSO
	
CARREGA21:
	la a1, grama
	addi a1, a1, 8
	j PRE_PRINT_TILE
	
CARREGA22:
	la a1, flor
	addi a1, a1, 8
	j PRE_PRINT_TILE

# Arvore
CARREGA49:
	la a1, arvore_1_1
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA50:
	la a1, arvore_1_2
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA51:
	la a1, arvore_2_1
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA52:
	la a1, arvore_2_2
	addi a1, a1, 8
	j PRE_PRINT_TILE


PRINT_TILE:
	lw t2, 0(a1)		#imagem
	sw t2, 0(s0)		#frame
	
	addi t0, t0, 4
	addi a1, a1, 4
	addi s0, s0, 4
	
	li t2, 16
	bne t0, t2, PRINT_TILE
	
	li t0, 0
	addi t5, t5, 1
	addi s0, s0, 304	#320-16 
	
	
	li t2, 16
	bne t5, t2, PRINT_TILE
	ret
	
PRINT_TILE_INVERSO:	
	lb t2, 0(a1)		#imagem
	sb t2, 0(s0)		#frame
	
	addi t0, t0, 1
	addi a1, a1, 1
	addi s0, s0, -1
	
	li t2, 16
	bne t0, t2, PRINT_TILE_INVERSO
	
	li t0, 0
	addi t5, t5, 1
	addi s0, s0, 336	#320+16 
	
	li t2, 16
	bne t5, t2, PRINT_TILE_INVERSO
	ret

CALCULA_POSICAO_PERSONAGEM:
	la t2, posicao_personagem
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
	
	bnez s8, CONTRARIO
	call PRINT_TILE
	j KEY2

CONTRARIO:
	call PRINT_TILE_INVERSO
			
KEY2:
	li t1,0xFF200000		# carrega o endereço de controle do KDMMIO
	lw t0,0(t1)				# Le bit de Controle Teclado
	andi t0,t0,0x0001		# mascara o bit menos significativo
   	beq t0,zero,FIM   	   	# Se não há tecla pressionada então vai para FIM
  	lw t2,4(t1)  			# le o valor da tecla tecla
	call MOVE_TELA
FIM:	j KEY2				# retorna


MOVE_TELA:
	li t0, 'd'
	beq t0, t2, MOVE_DIREITA
	
	li t0, 'a'
	beq t0, t2, MOVE_ESQUERDA
	
	li t0, 'w'
	beq t0, t2, MOVE_CIMA
	
	li t0, 's'
	beq t0, t2, MOVE_BAIXO
	
	li t0, 'i'
	li s9, 3		#s9 = guarda o mapa que estava antes de abrir o inventário
	beq t0, t2, ABRE_INVENTARIO
	
	ret


MOVE_DIREITA:
	li s8, 0
	beqz s7, DIR1
	la s6, ash_dir_dir
	li s7, 0
	j DIR2
	
DIR1:
	la s6, ash_dir_esq
	li s7, 1
DIR2:
	la a0, posicao_inicial
	lw t0, 0(a0)
	addi t0, t0, 1	
### limite de paredes ###
	lw t2, 4(a0)
	
	la a1, posicao_personagem
	lw t4, 0(a1)
	lw t5, 4(a1)
	
	add t4, t4, t0
	add t5, t5, t2

	li t3, 45
	mul t5, t5, t3
	
	la a1, tiles
	add a1, a1, t4
	add a1, a1, t5
	
	li t3, 21
	lb t5, 0(a1)
	bne t3, t5, TALVEZ_PARE_HORIZONTAL_PT
########################	
	sw t0, 0(a0)
	j COMECO
	
MOVE_ESQUERDA:
	li s8, 0
	beqz s7, ESQ1
	la s6, ash_esq_dir
	li s7, 0
	j ESQ2
	
ESQ1:
	la s6, ash_esq_esq
	li s7, 1
ESQ2:
	la a0, posicao_inicial
	lw t0, 0(a0)
	addi t0, t0, -1
### limite de paredes ###	
	lw t2, 4(a0)
	
	la a1, posicao_personagem
	lw t4, 0(a1)
	lw t5, 4(a1)
	
	add t4, t4, t0
	add t5, t5, t2

	li t3, 45
	mul t5, t5, t3
	
	la a1, tiles
	add a1, a1, t4
	add a1, a1, t5
	
	li t3, 21
	lb t5, 0(a1)
	bne t3, t5, TALVEZ_PARE_HORIZONTAL_PT		
########################	
	sw t0, 0(a0)
	j COMECO
	
MOVE_CIMA:
	li s8, 0
	beqz s7, CIMA1
	la s6, ash_costas_dir
	li s7, 0
	j CIMA2
	
CIMA1:
	la s6, ash_costas_esq
	li s7, 1
CIMA2:
	la a0, posicao_inicial
	lw t1, 0(a0)
	lw t0, 4(a0)
	addi t0, t0, -1		
	
	beqz t0, VAI_ROCHA
	
	li t2, 9
	beq t2, t0 TALVEZ_SAI
### limite de paredes ###	
	lw t2, 0(a0)
	
	la a1, posicao_personagem
	lw t4, 0(a1)
	lw t5, 4(a1)	
	
	add t4, t4, t2
	add t5, t5, t0

	li t3, 45
	mul t5, t5, t3
	
	la a1, tiles
	add a1, a1, t4
	add a1, a1, t5
	
	li t3, 21
	lb t5, 0(a1)
	bne t3, t5, TALVEZ_PARE_VERTICAL_PT
########################
	
	sw t0, 4(a0)
	j COMECO
	
TALVEZ_SAI:
	li t2, 10
	beq t2, t1, ENTRA_CASA
	
	beqz t0, VAI_ROCHA
	
	sw t0, 4(a0)
	j COMECO
	
MOVE_BAIXO:
	li s8, 0
	beqz s7, BAIXO1
	la s6, ash_andando_dir
	li s7, 0
	j BAIXO2
	
BAIXO1:
	la s6, ash_andando_esq
	li s7, 1
BAIXO2:	
	la a0, posicao_inicial
	lw t0, 4(a0)
	addi t0, t0, 1	
### limite de paredes ###	
	lw t2, 0(a0)
	
	la a1, posicao_personagem
	lw t4, 0(a1)
	lw t5, 4(a1)
		
	add t4, t4, t2
	add t5, t5, t0

	li t3, 45
	mul t5, t5, t3
	
	la a1, tiles
	add a1, a1, t4
	add a1, a1, t5
	
	li t3, 21
	lb t5, 0(a1)
	bne t3, t5, TALVEZ_PARE_VERTICAL_PT	
########################	
	sw t0, 4(a0)
	j COMECO
	
ENTRA_CASA:
	j CASA

VAI_ROCHA:
	j ROCHAS
	
TALVEZ_PARE_HORIZONTAL_PT:
	li t3, 22
	lb t5, 0(a1)
	bne t3, t5, TALVEZ_PARE_HORIZONTAL_PT1 
	
	sw t0, 0(a0)
	j COMECO
	
TALVEZ_PARE_HORIZONTAL_PT1:
	li t3, 5
	bne t3, t5, KEY2
	
	sw t0, 0(a0)
	j COMECO
	
TALVEZ_PARE_VERTICAL_PT:
	li t3, 22
	lb t5, 0(a1)
	bne t3, t5, TALVEZ_PARE_VERTICAL_PT1
	
	sw t0, 4(a0)
	j COMECO
	
TALVEZ_PARE_VERTICAL_PT1:
	li t3, 5
	bne t3, t5, KEY2
	
	sw t0, 4(a0)
	j COMECO
	

.data
.include "./includes.s"	
