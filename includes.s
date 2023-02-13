.data
##########################
###    Sprites casa   ####
##########################
.include "./sprites/professor.s"
.include "./sprites/caixa.s"
.include "./sprites/chao.s"
.include "./sprites/tapete.s"

#########################
###   Tiles da casa   ###
#########################
.include "./TilesPalletTown/frenteMeioEsquerdo.data"
.include "./TilesPalletTown/tetoCimaMeio.data"
.include "./TilesPalletTown/tetoMeioMeio.data"
.include "./TilesPalletTown/frenteMeioMeio.data"
.include "./TilesPalletTown/tetoCimaUnico.data"
.include "./TilesPalletTown/tetoMeioUnico.data"
.include "./TilesPalletTown/frenteMeioDireito.data"
.include "./TilesPalletTown/tetoCimaDireito.data"
.include "./TilesPalletTown/tetoMeioDireito.data"
.include "./TilesPalletTown/tetoCimaEsquerdo.data"
.include "./TilesPalletTown/tetoMeioEsquerdo.data"
.include "./TilesPalletTown/tetoBaixoUnico.data"
.include "./TilesPalletTown/frenteBaixoUnico.data"
.include "./TilesPalletTown/frenteMeioUnico.data"
.include "./TilesPalletTown/tetoBaixoDireito.data"
.include "./TilesPalletTown/frenteBaixoMeio.data"
.include "./TilesPalletTown/tetoBaixoMeio.data"
.include "./TilesPalletTown/tetoBaixoEsquerdo.data"
.include "./TilesPalletTown/frenteBaixoEsquerdo.data"
.include "./TilesPalletTown/frenteBaixoDireito.data"

##########################
###  Tiles Pallet Town ###
##########################
.include "./TilesPalletTown/grama.data"
.include "./TilesPalletTown/flor.data"
.include "./TilesPalletTown/arvore_1_1.s"
.include "./TilesPalletTown/arvore_1_2.s"
.include "./TilesPalletTown/arvore_2_1.s"
.include "./TilesPalletTown/arvore_2_2.s"

###########################
### Sprites Mapa Rochas ###
###########################
.include "./sprites/areia.s"
.include "./sprites/chao_mapa2.s"
.include "./sprites/diagonal_big_rocha.s"
.include "./sprites/lateral_big_rocha.s"
.include "./sprites/pedra.s"
.include "./sprites/chave.s"
.include "./sprites/pocao.s"

##########################
### Sprites personagem ###
##########################
.include "./sprites/ash_andando_dir.s"
.include "./sprites/ash_andando_esq.s"
.include "./sprites/ash_costas.s"
.include "./sprites/ash_costas_dir.s"
.include "./sprites/ash_costas_esq.s"
.include "./sprites/ash_dir.s"
.include "./sprites/ash_dir_dir.s"
.include "./sprites/ash_dir_esq.s"
.include "./sprites/ash_esq_dir.s"
.include "./sprites/ash_esq_esq.s"
.include "./sprites/ash_parado.s"

##########################
###        MAPAS       ###
##########################
.include "./casa.s"
.include "./rochas.s"
.include "./dialogo.s"


##########################
### Pokemon do jogador ###
##########################
pokemon_jogador: .byte 0
inventario_jogador: .byte 1,0,0,0,0,0,0,0,0
