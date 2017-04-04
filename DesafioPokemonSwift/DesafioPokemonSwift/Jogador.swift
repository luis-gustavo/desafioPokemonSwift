//
//  Jogador.swift
//  DesafioPokemonSwift
//
//  Created by Matheus Azevedo on 04/04/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation

class Jogador {
    var nome:String?
    var pokemons = [Pokemon]()
    
    init(){
        //Construtor padrao
    }
    
    init(nome: String, pokemon:Pokemon) {
        self.nome = nome
        pokemons.append(pokemon)
    }
    
    init(nome: String) {
        self.nome = nome
    }
    
}
