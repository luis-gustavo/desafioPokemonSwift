//
//  Visao.swift
//  DesafioPokemonSwift
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 04/04/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation

class Visao {
    
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
