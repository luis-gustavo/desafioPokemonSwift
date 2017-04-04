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
        Visao.limpaTela()
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
        Visao.limpaTela()
        print("Você fugiu!")
    }
    

    class func venceu(){
        print("Parabéns você venceu a batalha!\n")
        print("Seu pokemon ganhou 35 de experiência\n")
    }
    
    class func perdeu(){
        print("Você perdeu!\n")
        print("Ahhhhh infelizmente não foi dessa vez!")
        print("Mas você ganhou 10 de exp\n")
    }
    
    class func limpaTela(){
        for _ in 0...20 {
            print("\n")
        }
    }
    
    class func pokemonsInsuficientes(){
        Visao.limpaTela()
        print("Voce nao tem pokemons suficientes!")
        print("Voce precisa ter ao menos 3 pokemons para lutar em ginasios")
    }
    
    class func pokemonEvoluiu(pokemon:Pokemon){
        print("O seu pokemon: \(pokemon.nome) evoluiu!")
        print("Agora ele está no level: \(pokemon.level)")
    }
    
}
