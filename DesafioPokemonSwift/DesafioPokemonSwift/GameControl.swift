//
//  GameControl.swift
//  DesafioPokemonSwift
//
//  Created by Matheus Azevedo on 04/04/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation

class GameControl{
    
    
    class func ordernarPokemonsJogador(jogador:Jogador){
        var coisas : [Pokemon] = []
        coisas = jogador.pokemons.sorted(by: { $0.level > $1.level})
        jogador.pokemons = coisas
    }
    
    class func evoluirPokemon(pokemon:Pokemon){
        if pokemon.experiencia >= 100 {
            pokemon.experiencia = pokemon.experiencia-100
            pokemon.level += 1
            Visao.pokemonEvoluiu(pokemon: pokemon)
        }
    }
    
    class func mostrarStatusJogador(currentJogador:Jogador){
        Visao.limpaTela()
        Visao.menuEstatus(jogador: currentJogador)
    }
    
    class func escolhaLutar(jogador:Jogador, pokemon:Pokemon){
        
    }
}
