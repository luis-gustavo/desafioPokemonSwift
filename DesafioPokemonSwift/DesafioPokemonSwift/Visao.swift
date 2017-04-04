//
//  Visao.swift
//  DesafioPokemonSwift
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 04/04/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation

class Visao{
    
    class func naoCapturouPokemon(){
        //chamar funcao limpa tela
        print("Nao foi dessa vez! Voce nao conseguiu capturar o pokemon\n")
    }
    
    class func menuLutarJogador(jogador: Jogador){
        
        print("Escolha o pokemon para batalhar!\n")
        let contador = 1
        
        for pokemon in jogador.pokemons {
           print("Digite \(contador) para escolher o pokemon \(pokemon.nome) de nível \(pokemon.level) de elemento \(pokemon.tipo)")
        }
    }
    
    class func menuEstatus(jogador: Jogador){
        var pokemonAtual = 1
        
        print("Nome: \(jogador.nome)")
        print("Nº de pokemons: \(jogador.pokemons.count)")
        
        for _ in jogador.pokemons{
            print("\(pokemonAtual) ||\(jogador.pokemons[pokemonAtual].nome)||")
            print(" Tipo: \(jogador.pokemons[pokemonAtual].tipo)")
            print(" Nível: \(jogador.pokemons[pokemonAtual].level)")
            print(" Exp: \(jogador.pokemons[pokemonAtual].experiencia)")
            
            pokemonAtual+=1
        }
        
    }
    
    class func fugiu(){
        //colocar limpaTela
        print("Você fugiu!")
    }
    
}

