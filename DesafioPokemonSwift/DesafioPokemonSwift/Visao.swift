//
//  Visao.swift
//  DesafioPokemonSwift
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 04/04/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation

func criaJogadorInicial() -> Jogador {
    var pokemonInicial:Int = Int()

    print("Digite seu nome: ")
    let currentNome:String = String(readLine()!)
    let jogador:Jogador = Jogador(nome:currentNome)
    
    print("Escolha o seu Pokemon!");
    print("Digite 1 para escolher o Charmander(Elemento: Fogo - Nivel: 1)")
    print("Digite 2 para escolher o Squirtle(Elemento: Agua - Nivel: 1)")
    print("Digite 3 para escolher o Bulbasaur(Elemento: Vento - Nivel: 1)")
    
    var validado:Bool=false
    let pokemon:Pokemon=Pokemon()
    
    repeat{
        pokemonInicial = Int(readLine()!)!
        switch (pokemonInicial) {
            case Int(1):
                //constor do jogador
                pokemon.nome = "Charmander"
                pokemon.tipo = "Fogo"
                validado=true
            case Int(2):
                pokemon.nome = "Squirtle"
                pokemon.tipo = "Agua"
                validado=true
            case Int(3):
                pokemon.nome = "Bulbasaur"
                pokemon.tipo = "Vento"
                validado=true
            default:
                print("Insira uma opção válida: ")
        }
    }while(!validado)
    
    jogador.pokemons.append(pokemon)
    
    return jogador
}

func menu(){
    print("Digite 1 para caçar/evoluir pokemons")
    print("Digite 2 para conquistar ginásios")
    print("Digite 3 para ver seus status e seus pokemons")
    print("Digite 4 para Sair")
}

func menuCacando(pokemonInimigo:Pokemon){
    print("Voce encontrou o pokemon " + pokemonInimigo.nome)
    print("de level " + String(pokemonInimigo.level))
    print("com o elemento " + pokemonInimigo.tipo)
    print("Digite 1 para lutar")
    print("Digite 2 para capturar")
    print("Digite 3 para fugir")
}

func excedeNumeroPokemons(){
    print("Voce ja possui 5 pokemons! Voce nao pode mais capturar pokemons!")
}

func capturouPokemon(){
    limpaTela()
    print("Parabéns! Voce conseguiu capturar o pokemon!")
}

func limpaTela(){
    for _ in 1...20{
        print()
    }
}

func menuGinasios(itens:NSMutableArray){
    print("Digite 1 para Conquistar o Ginasio " + (itens[34] as! Ginasio).nome! + " com o lider " + ((itens[34] as! Ginasio).lider?.nome)!)
    print("Digite 2 para Conquistar o Ginasio " + (itens[35] as! Ginasio).nome! + " com o lider " + ((itens[35] as! Ginasio).lider?.nome!)!)
    print("Digite 3 para Conquistar o Ginasio " + (itens[36] as! Ginasio).nome! + " com o lider " + ((itens[36] as! Ginasio).lider?.nome!)!)
    print("Digite 4 para Conquistar o Ginasio " + (itens[37] as! Ginasio).nome! + " com o lider " + ((itens[37] as! Ginasio).lider?.nome!)!)
    print("Digite 5 para voltar ao menu inicial")
}

