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
###   tamanho: 35x30    ###
###   limite: 20x15     ###
###########################
tiles: .word 
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,6,7,8,1,-8,-7,-6,21,21,21,21,21,21,21,21,21,21,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,9,10,11,2,-11,-10,-9,21,21,21,21,21,22,22,22,22,21,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,12,13,14,3,-14,-13,-12,21,21,21,21,21,22,22,22,22,21,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,15,16,17,4,-17,-16,-15,21,21,21,21,21,22,22,22,22,21,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,18,19,20,5,-20,-19,-18,21,21,21,21,21,21,21,21,21,21,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,21,21,21,21,21,21,21,21,21,21,6,7,8,1,-8,-7,-6,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,21,21,21,21,21,21,21,21,21,21,9,10,11,2,-11,-10,-9,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,22,22,22,21,21,21,21,21,21,21,12,13,14,3,-14,-13,-12,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,22,22,22,21,21,21,21,21,21,21,15,16,17,4,-17,-16,-15,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,22,22,22,21,21,21,21,21,21,21,18,19,20,5,-20,-19,-18,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,22,0,0,0,0,0,
	0,0,0,0,0,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	     
	     
posicao_inicial: .word 5,5
posicao_personagem: .word 7,8

.text
PALLET_TOWN:	
	li s7, 0			#s7 define o sprite do personagem andando
	la s6, ash_parado	#s6 define o sprite do personagem
	li s8, 0			#s8 define se vai ser usada a imagem ao contrário

COMECO:

### Calcula posição nos tiles ###
	la a0, posicao_inicial
	lw t0, 0(a0)
	lw t1, 4(a0)
	
	li t2, 4
	mul t0, t0, t2
	mul t1, t1, t2
	
	li t2, 35
	mul t1, t1, t2
	
	la a0, tiles
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
	lw t0, 0(a0)
	
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
	
	# Do 23 ao 48 sao para o alfabeto
	li t2, 23
	beq t0, t2, CARREGA23

	li t2, 24
	beq t0, t2, CARREGA24

	li t2, 25
	beq t0, t2, CARREGA25

	li t2, 26
	beq t0, t2, CARREGA26

	li t2, 27
	beq t0, t2, CARREGA27

	li t2, 28
	beq t0, t2, CARREGA28

	li t2, 29
	beq t0, t2, CARREGA29

	li t2, 30
	beq t0, t2, CARREGA30

	li t2, 31
	beq t0, t2, CARREGA31

	li t2, 32
	beq t0, t2, CARREGA32

	li t2, 33
	beq t0, t2, CARREGA33

	li t2, 34
	beq t0, t2, CARREGA34

	li t2, 35
	beq t0, t2, CARREGA35

	li t2, 36
	beq t0, t2, CARREGA36

	li t2, 37
	beq t0, t2, CARREGA37

	li t2, 38
	beq t0, t2, CARREGA38

	li t2, 39
	beq t0, t2, CARREGA39

	li t2, 40
	beq t0, t2, CARREGA40

	li t2, 41
	beq t0, t2, CARREGA41

	li t2, 42
	beq t0, t2, CARREGA42

	li t2, 43
	beq t0, t2, CARREGA43

	li t2, 44
	beq t0, t2, CARREGA44

	li t2, 45
	beq t0, t2, CARREGA45

	li t2, 46
	beq t0, t2, CARREGA46

	li t2, 47
	beq t0, t2, CARREGA47

	li t2, 48
	beq t0, t2, CARREGA48

	j KEY2
	
PRE_PRINT_TILE:
	li t0, 0
	li t5, 0
	
	call PRINT_TILE

	addi a0, a0, 4		
	addi t3, t3, 1

	li t2, 20
	bne t2, t3, PERCORRE_TILES
	
	li t3, 0
	addi t4, t4, 1
	addi a0, a0, 60		#volta os tiles para a linha abaixo
	li t2, 15
	
	bne t2, t4, PERCORRE_TILES
	
### Se for igual, terminou de printar a tela e deve rodar o jogo ###
	j CALCULA_POSICAO_PERSONAGEM

PRE_PRINT_TILE_INVERSO:
	li t0, 0
	li t5, 0
	
	addi s0, s0, 15
	call PRINT_TILE_INVERSO
	
	addi a0, a0, 4		
	addi t3, t3, 1
	
	li t2, 20
	bne t2, t3, PERCORRE_TILES
	
	li t3, 0
	addi t4, t4, 1
	addi a0, a0, 60		#volta os tiles para a linha abaixo
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

	addi a0, a0, 4		
	addi t3, t3, 1

	li t2, 20
	bne t2, t3, PERCORRE_TILES
	
	li t3, 0
	addi t4, t4, 1
	addi a0, a0, 60		#volta os tiles para a linha abaixo
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

# CARREGA23 ao CARREGA48 e o alfabeto

CARREGA23:
	la a1, a
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA24:
	la a1, b
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA25:
	la a1, c
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA26:
	la a1, d
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA27:
	la a1, e
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA28:
	la a1, f
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA29:
	la a1, g
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA30:
	la a1, h
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA31:
	la a1, i
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA32:
	la a1, jota
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA33:
	la a1, k
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA34:
	la a1, l
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA35:
	la a1, m
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA36:
	la a1, n
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA37:
	la a1, o
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA38:
	la a1, p
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA39:
	la a1, q
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA40:
	la a1, r
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA41:
	la a1, s
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA42:
	la a1, t
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA43:
	la a1, u
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA44:
	la a1, v
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA45:
	la a1, w
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA46:
	la a1, x
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA47:
	la a1, y
	addi a1, a1, 8
	j PRE_PRINT_TILE

CARREGA48:
	la a1, z
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
	lw t0,0(t1)			# Le bit de Controle Teclado
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
	sw t0, 0(a0)
	j COMECO
	
MOVE_ESQUERDA:
	li s8, 1
	beqz s7, ESQ1
	la s6, ash_dir_dir
	li s7, 0
	j ESQ2
	
ESQ1:
	la s6, ash_dir_esq
	li s7, 1
ESQ2:
	la a0, posicao_inicial
	lw t0, 0(a0)
	addi t0, t0, -1	
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
	
	li t2, 20
	mul t1, t1, t0
	beq t1, t2, ENTRA_CASA
	
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
	sw t0, 4(a0)
	j COMECO
	
ENTRA_CASA:
	j CASA

.data
	.include "./includes.s"