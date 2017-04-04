//
//  GameControl.swift
//  DesafioPokemonSwift
//
//  Created by Matheus Azevedo on 04/04/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation

class GameControl {
    
    func createPlayerNome(nome:String) -> Jogador{
        let jogador = Jogador(nome: nome)
        return jogador
    }
    
    class func escolhaMenu() -> Int{
        Visao.menu
        var opcao:Int
        let entrada = readLine()
        opcao = Int(entrada!)!
        return opcao
    }
    
    
    class func escolhaPokemonLutar(jogador: Jogador) -> Int{
        Visao.menuLutarJogador(jogador:jogador)
        var opcao:Int
        var validado=false
        var entrada:String
        
        repeat{
            entrada = readLine()!
            opcao = Int(entrada)!
            if opcao-1 < jogador.pokemons.count && opcao > 0 {
                validado=true
            }else {
                print("Escolha um pokémon disponível")
            }
        } while !validado
        
        return opcao-1
    }

    
    
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
