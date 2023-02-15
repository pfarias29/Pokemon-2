.text


DIALOGO:
    li a0, 0x00000000
    li t0, 0        #limite de colunas
    li t3, 0        #limite de linhas

    li s0, 0xff0
    slli s0, s0, 20

    call DISPLAY_PRETO

# Mensagens
    la a0, professor
    li a1, 64
    li a2, 48
    li a3, 0
    call PRINT_D

    la a0, dialogo1
    li a1, 0
    li a2, 80
    li a3, 0x002D
    	call printString

    la a0, dialogo2
    li a1, 0
    li a2, 96
    li a3, 0x002D
    	call printString

    la a0, dialogo3
    li a1, 0
    li a2, 112
    li a3, 0x002D
    	call printString

    la a0, dialogo4
    li a1, 0
    li a2, 128
    li a3, 0x002D
    	call printString

    la a0, dialogo5
    li a1, 0
    li a2, 144
    li a3, 0x002D
    	call printString

    la a0, dialogo6
    li a1, 0
    li a2, 160
    li a3, 0x002D
    	call printString

    la a0, dialogo7
    li a1, 0
    li a2, 176
    li a3, 0x002D
    	call printString

    call KEY_DIALOGO

DISPLAY_PRETO:
    sw a0, 0(s0)

    addi s0, s0, 4
    addi t0, t0, 4

    li t2, 320
    bne t2, t0, DISPLAY_PRETO

    li t0, 0
    addi t3, t3, 1
    
    li t2, 240
    bne t2, t3, DISPLAY_PRETO 
    ret


# ecall print string
# t0 = x
# t1 = y
# a0 = string
PRINT_D_STR:
    li a7, 104
	mv a1, t0
	mv a2, t1
	li a3, 0x0036
	li a4, 0
	ecall
	ret		

PRINT_D:
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

    lw t4, 0(a0)
    lw t5, 4(a0)

PRINT_D_LINHA:
    lw t6, 0(t1)
    sw t6, 0(t0)

    addi t0, t0, 4
    addi t1, t1, 4

    addi t3, t3, 4

    blt t3, t4, PRINT_D_LINHA

    addi t0, t0, 320
    sub t0, t0, t4

    mv t3, zero
    addi t2, t2, 1

    bgt t5, t2, PRINT_D_LINHA

    ret

#TODO: fazer a escolha do pokemon
KEY_DIALOGO:
	li t1,0xFF200000		# carrega o endereço de controle do KDMMIO
	lw t0,0(t1)			    # Le bit de Controle Teclado
	andi t0,t0,0x0001		# mascara o bit menos significativo
   	beq t0,zero,FIM_DIALOGO # Se não há tecla pressionada então vai para FIM
  	lw t2,4(t1)  			# le o valor da tecla tecla
    li t3, '1'		        # carrega o valor da tecla 1
    li t4, '2'		        # carrega o valor da tecla 2
    li t5, '3'		        # carrega o valor da tecla 3
    li t6, 's'		        # carrega o valor da tecla s
    li s11, 'i'		        # carrega o valor da tecla i

   	beq t2, t3, POKEMON_CHARMANDER
   	beq t2, t4, POKEMON_BULBASAUR
   	beq t2, t5, POKEMON_SQUIRTLE	   
   	beq t2, t6, RETORNA_CASA	       
   	beq t2, s11, ABRE_INVENTARIO	       

   	j FIM_DIALOGO			# se não for nenhuma opcao então volta para FIM_DIALOGO
            
FIM_DIALOGO:	
    j KEY_DIALOGO		# retorna


KEY_INVENTARIO:
	li t1,0xFF200000		# carrega o endereço de controle do KDMMIO
	lw t0,0(t1)			    # Le bit de Controle Teclado
	andi t0,t0,0x0001		# mascara o bit menos significativo
   	beq t0,zero,FIM_INVENTARIO # Se não há tecla pressionada então vai para FIM
  	lw t2,4(t1)  			# le o valor da tecla tecla
		        
    li t3, 's'		        
   	beq t2, t3, RETORNA_MAPA
	       
   	bne t2, t3, USAR_ITEM	   

   	j FIM_INVENTARIO			# se não for nenhuma opcao então volta para FIM_INVENTARIO
            
FIM_INVENTARIO:	
    j KEY_INVENTARIO		# retorna

POKEMON_CHARMANDER:
    li a0, 0x00000000
    li t0, 0        #limite de colunas
    li t1, 0        #limite de linhas

    li s0, 0xff0
    slli s0, s0, 20
    call DISPLAY_PRETO

    # Cola o valor do pokemon
    la a0, pokemon_jogador
    li t2, 1
    sb t2, 0(a0)

    la a0, charmander
    li a1, 144
    li a2, 96
    li a3, 0
    call PRINT_D

    la a0, dialogo8
    li a1, 0
    li a2, 128
    li a3, 0x002D
    call printString

    la a0, dialogo11
    li a1, 0
    li a2, 160
    li a3, 0x002D
    call printString

    la a0, dialogo12
    li a1, 0
    li a2, 176
    li a3, 0x002D
    call printString

    call KEY_DIALOGO

POKEMON_BULBASAUR:
    li a0, 0x00000000
    li t0, 0        #limite de colunas
    li t1, 0        #limite de linhas

    li s0, 0xff0
    slli s0, s0, 20
    call DISPLAY_PRETO

    # Cola o valor do pokemon
    la a0, pokemon_jogador
    li t2, 2
    sb t2, 0(a0)

    la a0, bulbasaur
    li a1, 144
    li a2, 96
    li a3, 0
    call PRINT_D

    la a0, dialogo9
    li a1, 0
    li a2, 128
    li a3, 0x002D
    	call printString

    la a0, dialogo11
    li a1, 0
    li a2, 160
    li a3, 0x002D
    	call printString

    la a0, dialogo12
    li a1, 0
    li a2, 176
    li a3, 0x002D
    	call printString

    call KEY_DIALOGO

POKEMON_SQUIRTLE:
    li a0, 0x00000000
    li t0, 0        #limite de colunas
    li t1, 0        #limite de linhas

    li s0, 0xff0
    slli s0, s0, 20
    call DISPLAY_PRETO

    # Cola o valor do pokemon
    la a0, pokemon_jogador
    li t2, 3
    sb t2, 0(a0)

    
    la a0, squirtle
    li a1, 144
    li a2, 96
    li a3, 0
    call PRINT_D

    la a0, dialogo8
    li a1, 0
    li a2, 128
    li a3, 0x002D
    	call printString

    la a0, dialogo11
    li a1, 0
    li a2, 160
    li a3, 0x002D
    	call printString

    la a0, dialogo10
    li a1, 0
    li a2, 176
    li a3, 0x002D
    	call printString

    la a0, dialogo12
    li a1, 0
    li a2, 176
    li a3, 0x002D
    	call printString

    call KEY_DIALOGO

# TODO: fazer voltar pro mapa de origem
ABRE_INVENTARIO:    
    li a0, 0x00000000
    li t0, 0        #limite de colunas
    li t1, 0        #limite de linhas

    li s0, 0xff0
    slli s0, s0, 20
    call DISPLAY_PRETO

    la a6, inventario_jogador

    la a0, dialogo13
    li a1, 80
    li a2, 64
    li a3, 0x002D
    	call printString

    la a0, dialogo14
    li a1, 48
    li a2, 160
    li a3, 0x002D
    	call printString

    mv s10, zero
    call LOOP_INVENTARIO

SAIR_LOOP:
    call KEY_INVENTARIO

LOOP_INVENTARIO:
    # t0 = inventario[0]
    # s10 = contador
    # 9 = tamanho do inventario
    li t0, 9
    beq s10, t0, SAIR_LOOP

    lb t0, 0(a6)

    li t4, 1
    beq t4, t0, PRINT_CHARMANDER_INVENTORIO

    li t4, 2
    beq t4, t0, PRINT_BULBASAUR_INVENTORIO

    li t4, 3
    beq t4, t0, PRINT_SQUIRTLE_INVENTORIO
    
    li t4, 4
    beq t4, t0, PRINT_POCAO

    li t4, 5
    beq t4, t0, PRINT_POKEBOLA

    li t4, 6
    beq t4, t0, PRINT_CHAVE

RETORNA:
    addi s10, s10, 1
    addi a6, a6, 1
    j LOOP_INVENTARIO

PRINT_POCAO:
	li t0, 3
	div t2, s10, t0		#linha
	rem t0, s10, t0 	#coluna
	
	li t3, 16
	mul t0, t3, t0
	mul t2, t2, t3

    la a0, pocao
    li a1, 128
    add a1, a1, t0
    li a2, 96
    add a2, a2, t2 
    li a3, 0
    call PRINT_D

    j RETORNA

PRINT_POKEBOLA:
    li t0, 3
	div t2, s10, t0		#linha
	rem t0, s10, t0 	#coluna
	
	li t3, 16
	mul t0, t3, t0
	mul t2, t2, t3

    la a0, pokebola
    li a1, 128
    add a1, a1, t0
    li a2, 96
    add a2, a2, t2 
    li a3, 0
    call PRINT_D

    j RETORNA

PRINT_CHAVE:
    	li t0, 3
	div t2, s10, t0		#linha
	rem t0, s10, t0 	#coluna
	
	li t3, 16
	mul t0, t3, t0
	mul t2, t2, t3

    la a0, chave
    li a1, 128
    add a1, a1, t0
    li a2, 96
    add a2, a2, t2 
    li a3, 0
    call PRINT_D

    j RETORNA
    
PRINT_CHARMANDER_INVENTORIO:
    	li t0, 3
	div t2, s10, t0		#linha
	rem t0, s10, t0 	#coluna
	
	li t3, 16
	mul t0, t3, t0
	mul t2, t2, t3

    la a0, charmander
    li a1, 128
    add a1, a1, t0
    li a2, 96
    add a2, a2, t2 
    li a3, 0
    call PRINT_D

    j RETORNA
    
PRINT_BULBASAUR_INVENTORIO:
    	li t0, 3
	div t2, s10, t0		#linha
	rem t0, s10, t0 	#coluna
	
	li t3, 16
	mul t0, t3, t0
	mul t2, t2, t3

    la a0, bulbasaur
    li a1, 128
    add a1, a1, t0
    li a2, 96
    add a2, a2, t2 
    li a3, 0
    call PRINT_D

    j RETORNA
    
PRINT_SQUIRTLE_INVENTORIO:
    	li t0, 3
	div t2, s10, t0		#linha
	rem t0, s10, t0 	#coluna
	
	li t3, 16
	mul t0, t3, t0
	mul t2, t2, t3

    la a0, squirtle
    li a1, 128
    add a1, a1, t0
    li a2, 96
    add a2, a2, t2 
    li a3, 0
    call PRINT_D

    j RETORNA

USA_POCAO:
    li a0, 0x00000000
    li t0, 0        #limite de colunas
    li t1, 0        #limite de linhas

    li s0, 0xff0
    slli s0, s0, 20
    call DISPLAY_PRETO

    la a0, dialogo15
    li a1, 48
    li a2, 160
    li a3, 0x002D
    call printString

    li t1,0xFF200000		# carrega o endereço de controle do KDMMIO
	lw t0,0(t1)			    # Le bit de Controle Teclado
	andi t0,t0,0x0001		# mascara o bit menos significativo
   	beq t0,zero,FIM_INVENTARIO # Se não há tecla pressionada então vai para FIM
  	lw t2,4(t1)  			# le o valor da tecla tecla
		        
    li t3, 'z'		        
   	bne t2, t3, RETORNA_MAPA


USAR_ITEM:
    # percorrer o inventario
    la a0, inventario_jogador
    li t0, 0

    li t3, '1'	
    bne t2, t3, TESTA2
    sb t0, 0(a0)

    j ABRE_INVENTARIO

TESTA2:
    li t3, '2'	
    bne t2, t3, TESTA3
    sb t0, 1(a0)

    j ABRE_INVENTARIO

TESTA3:
    li t3, '3'	
    bne t2, t3, TESTA4
    sb t0, 2(a0)

    j ABRE_INVENTARIO

TESTA4:
    li t3, '4'	
    bne t2, t3, TESTA5
    sb t0, 3(a0)

    j ABRE_INVENTARIO

TESTA5:
    li t3, '5'	
    bne t2, t3, TESTA6
    sb t0, 4(a0)

    j ABRE_INVENTARIO

TESTA6:
    li t3, '6'	
    bne t2, t3, TESTA7
    sb t0, 5(a0)

    j ABRE_INVENTARIO

TESTA7:
    li t3, '7'	
    bne t2, t3, TESTA8
    sb t0, 6(a0)

    j ABRE_INVENTARIO

TESTA8:
    li t3, '8'	
    bne t2, t3, TESTA9
    sb t0, 7(a0)

    j ABRE_INVENTARIO

TESTA9:
    li t3, '9'	
    bne t2, t3, KEY_INVENTARIO
    sb t0, 8(a0)

j KEY_INVENTARIO

RETORNA_MAPA:
	li t0, 1
	beq t0, s5, RETORNA_CASA
	
	li t0, 2
	beq t0, s5, RETORNA_ROCHAS
	
	li t0, 3
	beq t0, s5, RETORNA_PALLET_TOWN
	

RETORNA_CASA:
	la a0, inventario_jogador
	li t0, 6
	sb t0, 8(a0)


    j CASA
RETORNA_ROCHAS:
	j ROCHAS
RETORNA_PALLET_TOWN:
	j PALLET_TOWN

.data
##############################
###        MENSAGENS      ####
##############################
dialogo1:   .string "        Ola jogador!      "
dialogo2:   .string "        Escolha seu primeiro pokemon!"
dialogo3:   .string "        Escolha um pokemon: "
dialogo4:   .string "        1- Charmander "
dialogo5:   .string "        2- Bulbasaur "
dialogo6:   .string "        3- Squirtle "
dialogo7:   .string "        s- Para voltar para casa "
dialogo8:   .string "     Voce escolheu o Charmander!"
dialogo9:   .string "     Voce escolheu o Bulbasaur!"
dialogo10:  .string "     Voce escolheu o Squirtle!"
dialogo11:  .string "     Para escolher outro pokemon"
dialogo12:  .string "     aperte o numero dele (1, 2, 3)"
dialogo13:  .string "    INVENTARIO"
dialogo14:  .string "  1 - 9 itens do inventario"
dialogo15:  .string "     VOCE REPROVOU EM OAC O_O"

