//
//  main.swift
//  DesafioPokemonSwift
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 04/04/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation

let itens = GameControl.inicializaPokemon()
let jogador = Visao.criaJogadorInicial()
var opcao:Int

repeat{
    opcao = GameControl.escolhaMenu()
    switch opcao {
    case 1:
        GameControl.escolhaCacar(itens:itens jogador:jogador)
    case 2:
        if jogador.pokemons.count < 3 {
            Visao.pokemonsInsuficientes()
        }
        else{
            GameControl.escolherConquistarGinasios(itens:itens jogador:jogador)
        }
    case 3:
        GameControl.mostrarStatusJogador(currentJogador: jogador)
    case 4: break
        //Encerrar
    default:
        print("Insira uma opção válida")
    }
}while opcao != 4
