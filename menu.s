.data
.include "./MACROSv21.s"

.text
# a1 = altura
# a2 = largura
SETUP:
    li a0, 0x00000000
    li t0, 0        #limite de colunas
    li t3, 0        #limite de linhas

    li s0, 0xff0
    slli s0, s0, 20

    call DISPLAY_PRETO

    la a0, pokebola
    li a1, 16
    li a2, 16
    li a3, 0
    call PRINT

    la a0, pokebola
    li a1, 288
    li a2, 16
    li a3, 0
    call PRINT

    la a0, pokebola
    li a1, 16
    li a2, 208
    li a3, 0
    call PRINT

    la a0, pokebola
    li a1, 288
    li a2, 208
    li a3, 0
    call PRINT


# POKEMONS
    la a0, squirtle
    li a1, 155
    li a2, 96
    li a3, 0
    call PRINT

    la a0, charmander
    li a1, 112
    li a2, 96
    li a3, 0
    call PRINT

    la a0, bulbasaur
    li a1, 192
    li a2, 96
    li a3, 0
    call PRINT

# OACMON
    la a0, o
    li a1, 112
    li a2, 64
    li a3, 0
    call PRINT

    la a0, a
    li a1, 128
    li a2, 64
    li a3, 0
    call PRINT
    
    la a0, c
    li a1, 144
    li a2, 64
    li a3, 0
    call PRINT

    la a0, m
    li a1, 160
    li a2, 64
    li a3, 0
    call PRINT

    la a0, o
    li a1, 176
    li a2, 64
    li a3, 0
    call PRINT

    la a0, n
    li a1, 192
    li a2, 64
    li a3, 0
    call PRINT

# INICIAR A MUSICA
    la a0, msg2
    call PRINT_STR

    #bcall PLAY_SONG

# INICIAR O JOGO
    la a0, msg1
    call PRINT_STR

    call KEY_MENU

# ecall print string
# a1 = largura
# a2 = altura
PRINT_STR:
    li a7, 104

	li a1, 0
	li a2, 144
	li a3, 0x002D
	li a4, 0
	ecall
	ret		
PRINT:
    li t0, 0xFF0
    add t0, t0, a3
    slli t0, t0, 20

    add t0, t0, a1

    li t1, 320
    mul t1, t1, a2
    add t0, t0, t1

    addi t1, a0, 8  # a0 = endereco da imagem

    mv t2, zero
    mv t3, zero

    lb t4, 0(a0)
    lb t5, 4(a0)

PRINT_LINHA:
    lb t6, 0(t1)
    sb t6, 0(t0)

    addi t0, t0, 1
    addi t1, t1, 1

    addi t3, t3, 1

    blt t3, t4, PRINT_LINHA

    addi t0, t0, 320
    sub t0, t0, t4

    mv t3, zero
    addi t2, t2, 1

    bgt t5, t2, PRINT_LINHA

    ret

PLAY_SONG:
    li a2, 3					# define o instrumento
	li a3, 127					# define o volume
	la s0, NUM				    # define o endereco do numero de notas
	lb s1, 0(s0)				# le o numero de notas
	la s0, NOTAS				# define o endereco das notas
	li t0, 0					# zera o contador de notas
	li a2, 68					# define o instrumento
	li a3, 127					# define o volume
	j LOOP
	ret

LOOP: 
    beq t0, s1, FIM_SONG				# contador chegou no final? entao  va para FIM
	lb a0, 0(s0)				# le o valor da nota
	lb a1, 4(s0)				# le a duracao da nota
	li a7, 31					# define a chamada de syscall
	ecall						# toca a not
	mv a0, a1					# passa a duracao da nota para a pausa
	li a7, 32					# define a chamada de syscal 
	ecall						# realiza uma pausa de a0 m
	addi s0, s0, 8				# incrementa para o endereco da proxima nota
	addi t0, t0, 1				# incrementa o contador de notas
	j LOOP					    # volta ao loop
	ret
	
FIM_SONG:
    li a0, 40					# define a nota
	li a1, 300					# define a duracao da nota em ms
	li a2, 127					# define o instrumento
	li a3, 127					# define o volume
	li a7, 33					# define o syscall
	ecall						# toca a nota
	ret

KEY_MENU:
	li t1,0xFF200000		# carrega o endereço de controle do KDMMIO
	lb t0,0(t1)			    # Le bit de Controle Teclado
	andi t0,t0,0x0001		# mascara o bit menos significativo
   	beq t0,zero,FIM_MENU   	# Se não há tecla pressionada então vai para FIM
  	lb t2,4(t1)  			# le o valor da tecla tecla
    li t3, 's'		# carrega o valor da tecla S
   	beq t2,t3,PALLET_TOWN	# se a tecla for S então vai para mapa PalletTown
   	j FIM_MENU				# se não for S então volta para FIM_MENU
            
FIM_MENU:	j KEY_MENU		# retorna


.data
##############################
###        MENSAGENS      ####
##############################
msg1:   .string "         Para iniciar, aperte S      "
msg2:   .string "         Curta um pouco de musica!"


##############################
###         MUSICA        ####
##############################
NUM: .word 168
NOTAS: 74,1764,74,215,74,4,74,215,81,4,81,367,74,73,74,215,74,4,74,215,82,4,82,367,74,73,74,215,74,4,74,215,81,4,81,367,74,73,74,215,74,4,74,215,78,4,78,367,74,73,74,215,74,4,74,215,81,4,81,367,74,73,74,215,74,4,74,215,82,4,85,0,82,367,85,0,86,73,86,772,74,110,74,808,82,73,84,0,82,772,84,0,72,110,72,808,74,73,74,215,74,4,74,215,81,4,81,367,74,73,74,215,74,4,74,215,82,4,82,367,74,73,74,215,74,4,74,215,84,4,84,367,74,73,74,215,74,4,74,215,82,4,85,0,82,367,85,0,81,73,86,0,81,1691,86,0,98,73,98,367,67,845,67,105,71,4,71,160,74,4,74,160,78,4,78,105,69,1764,69,215,69,4,69,215,74,4,74,367,69,73,69,215,69,4,69,215,75,4,75,367,69,73,69,215,69,4,69,215,74,4,74,367,69,73,69,215,69,4,69,215,70,4,73,0,70,367,73,0,69,73,69,215,69,4,69,215,74,4,74,367,69,73,69,215,69,4,69,215,79,4,79,367,81,73,81,772,69,110,69,808,77,73,77,772,62,110,65,0,62,808,65,0,69,73,69,215,69,4,69,215,74,4,74,367,69,73,69,215,69,4,69,215,75,4,75,367,69,73,69,215,69,4,69,215,77,4,77,367,69,73,69,215,69,4,69,215,79,4,79,367,78,73,78,1691,62,73,62,367,86,2000

##########################
###        TILES       ###
##########################
.include "./palletTown.s"

.include "./alfabeto/a.s"
.include "./alfabeto/c.s"
.include "./alfabeto/m.s"
.include "./alfabeto/n.s"
.include "./alfabeto/o.s"

.include "./sprites/charmander.s"
.include "./sprites/bulbasaur.s"
.include "./sprites/squirtle.s"

.include "./sprites/pokebola.s"

.include "./SYSTEMv21.s"


