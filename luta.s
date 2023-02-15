.data
vitorias_derrotas: .byte 0,0

.text
LUTA:
	li a0, 0x00000000
    	li t0, 0        #limite de colunas
    	li t3, 0        #limite de linhas

    	li s0, 0xff0
    	slli s0, s0, 20

    	call DISPLAY_PRETO
    	
    	la a0, pokemon_jogador
    	lb t0, 0(a0)
    	
    	li t2, 1
    	beq t0, t2, PRINT_CHARMANDER  
    	
    	li t2, 2
    	beq t0, t2, PRINT_BULBASAUR
    	
    	li t2, 3
    	beq t0, t2, PRINT_SQUIRTLE
    	
PRINT_CHARMANDER:
	la a0, charmander
    	li a1, 85
    	li a2, 90
    	li a3, 0
    	call PRINT
    	
    	j PRINT_INIMIGO
    
PRINT_BULBASAUR:
	la a0, bulbasaur
    	li a1, 85
    	li a2, 90
    	li a3, 0
    	call PRINT
    	
    	j PRINT_INIMIGO
 
PRINT_SQUIRTLE:
	la a0, squirtle
    	li a1, 85
    	li a2, 90
    	li a3, 0
    	call PRINT
    	
PRINT_INIMIGO:
	li t2, 1
    	beq s11, t2, PRINT_CHARMANDER_INIMIGO
    	
    	li t2, 2
    	beq s11, t2, PRINT_BULBASAUR_INIMIGO
    	
    	li t2, 3
    	beq s11, t2, PRINT_SQUIRTLE_INIMIGO
   
PRINT_CHARMANDER_INIMIGO:
	la a0, charmander
    	li a1, 235
    	li a2, 90
    	li a3, 0
    	call PRINT
    	
    	j FRASES_LUTA
    	  	
PRINT_BULBASAUR_INIMIGO:
	la a0, bulbasaur
    	li a1, 235
    	li a2, 90
    	li a3, 0
    	call PRINT
    	
    	j FRASES_LUTA
    	
PRINT_SQUIRTLE_INIMIGO:
	la a0, squirtle
    	li a1, 235
    	li a2, 90
    	li a3, 0
    	call PRINT 
    	
    	j FRASES_LUTA
    	
FRASES_LUTA:
	la a0, str_luta1
    	li t0, 80
    	li t1, 135
    	call PRINT_D_STR
	
	la a0, str_luta2
    	li t0, 80
    	li t1, 150
    	call PRINT_STR

	la a0, str_luta3
    	li t0, 80
    	li t1, 165
    	call PRINT_STR
    	
    	la a0, str_luta4
    	li t0, 80
    	li t1, 180
    	call PRINT_STR
    	
KEY_LUTA:
	li t1,0xFF200000		# carrega o endereço de controle do KDMMIO
	lw t0,0(t1)			# Le bit de Controle Teclado
	andi t0,t0,0x0001		# mascara o bit menos significativo
   	beq t0,zero,FIM_LUTA 		# Se não há tecla pressionada então vai para FIM
  	lw t2,4(t1)  			# le o valor da tecla tecla  
   	call CHECA_ESCOLHA	 
            
FIM_LUTA:	
    j KEY_LUTA		# retorna
    
    
CHECA_ESCOLHA:
	call Random
	
	li a1, 3
	call __umodsi3
	addi a0, a0, 1 		# o número tem que estar entre 1 e 3
	
	
	li t0, '1'
	beq t0, t2, PEDRA
	
	li t0, '2'
	beq t0, t2, PAPEL
	
	li t0, '3'
	beq t0, t2, TESOURA
	
	j KEY_LUTA
	
PEDRA:
	li t2, 1
	beq t2, a0, EMPATE
	
	li t0, 3
	beq t0, a0, VITORIA
	
	j DERROTA

PAPEL:
	li t2, 2
	beq t2, a0, EMPATE
	
	li t0, 1
	beq t0, a0, VITORIA
	
	j DERROTA
	
TESOURA:
	li t2, 3
	beq t2, a0, EMPATE
	
	li t0, 2
	beq t0, a0, VITORIA
	
	j DERROTA	
	
EMPATE:
	li a0, 0x00000000
    	li t0, 0        #limite de colunas
    	li t3, 0        #limite de linhas

    	li s0, 0xff0
    	slli s0, s0, 20

    	call DISPLAY_PRETO
    	
    	la a0, str_luta5
    	li t0, 120
    	li t1, 100
    	call PRINT_D_STR
    	
    	li a0, 750
    	call Sleep
    	
    	j LUTA

VITORIA:
	li a0, 0x00000000
    	li t0, 0        #limite de colunas
    	li t3, 0        #limite de linhas

    	li s0, 0xff0
    	slli s0, s0, 20

    	call DISPLAY_PRETO
    	
    	la a0, str_luta6
    	li t0, 120
    	li t1, 100
    	call PRINT_D_STR
    	
    	la a0, vitorias_derrotas
    	lb t0, 0(a0)
    	addi t0, t0, 1
    	sb t0, 0(a0)
    	
    	li a0, 750
    	call Sleep
    	
### Colocar aqui caso o jogador tenha vencido 3 vezes ###
	la a0, vitorias_derrotas
	lb t0, 0(a0)
	li t2, 3
	beq t2, t0, PEGA_POKEMON
    	
    	j LUTA
    	
DERROTA:	
	li a0, 0x00000000
    	li t0, 0        #limite de colunas
    	li t3, 0        #limite de linhas

    	li s0, 0xff0
    	slli s0, s0, 20

    	call DISPLAY_PRETO
    	
    	la a0, str_luta7
    	li t0, 120
    	li t1, 100
    	call PRINT_D_STR
    	
    	la a0, vitorias_derrotas
    	lb t0, 1(a0)
    	addi t0, t0, 1
    	sb t0, 1(a0)
    	
    	li a0, 750
    	call Sleep
    	
### Colocar aqui caso o jogador tenha perdido 3 vezes ###
    	la a0, vitorias_derrotas
    	lb t0, 1(a0)
	li t2, 3
	beq t2, t0, ROCHAS
	
    	j LUTA   			

PEGA_POKEMON:	
	li a0, 0x00000000
    	li t0, 0        #limite de colunas
    	li t3, 0        #limite de linhas

    	li s0, 0xff0
    	slli s0, s0, 20

    	call DISPLAY_PRETO
    	
    	la a0, vitorias_derrotas
	sb zero, 0(a0)
	sb zero, 1(a0)
    	
    	la a0, str_luta8
    	li t0, 30
    	li t1, 100
    	call PRINT_D_STR
    	
    	la a0, str_luta9
    	li t0, 80
    	li t1, 150
    	call PRINT_D_STR
    	
    	la a0, str_luta10
    	li t0, 170
    	li t1, 150
    	call PRINT_D_STR
    	
KEY_CAPTURA:
	li t1,0xFF200000		# carrega o endereço de controle do KDMMIO
	lw t0,0(t1)			# Le bit de Controle Teclado
	andi t0,t0,0x0001		# mascara o bit menos significativo
   	beq t0,zero,FIM_CAPTURA 		# Se não há tecla pressionada então vai para FIM
  	lw t2,4(t1)  			# le o valor da tecla tecla  
   	call CHECA_CAPTURA	 
            
FIM_CAPTURA:	
    j KEY_CAPTURA		# retorna
    	

CHECA_CAPTURA:
	li t0, '1'
	beq t0, t2, CAPTURA
	
	li t0, '2'
	beq t0, t2, NAO_CAPTURA
	
	ret
	
CAPTURA:
	la a0, inventario_jogador
	li t0, 0		#contador

LOOP_CAPTURA:
	add t2, a0, t0
	
	lb t3, 0(t2)
	beqz t3,  COLOCA_INVENTARIO
	
	addi t0, t0, 1
	li t2, 9
	bne t0, t2, LOOP_CAPTURA
	j ROCHAS
	
COLOCA_INVENTARIO:
	add t2, a0, t0
	sb s11, 0(t2)
	j ROCHAS
	
NAO_CAPTURA:
	j ROCHAS




.data
str_luta1: .string "Escolha um movimento:"
str_luta2: .string "1 - Pedra"
str_luta3: .string "2 - Papel"
str_luta4: .string "3 - Tesoura"
str_luta5: .string "Empate"
str_luta6: .string "Vitoria :)"
str_luta7: .string "Derrota :("
str_luta8: .string "Voce deseja capturar esse pokemon?"
str_luta9: .string "1 - Sim"
str_luta10: .string "2 - Nao"

    
