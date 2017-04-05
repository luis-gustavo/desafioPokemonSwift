//
//  GameControl.swift
//  DesafioPokemonSwift
//
//  Created by Matheus Azevedo on 04/04/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation

class GameControl{
    
    class func inicializaPokemon() -> Array<Any>{
        //array
        var itens = []
        
        //Pokemons de fogo
        let vulpix = Pokemon(nome: "Vulpix", tipo: "Fogo", level: 1, experiencia: 0)
        let growlithe = Pokemon(nome: "Growlithe", tipo: "Fogo", level: 1, experiencia: 0)
        let ponyta = Pokemon(nome: "Ponyta", tipo: "Fogo", level: 2, experiencia: 0)
        let slugma = Pokemon(nome: "Slugma", tipo: "Fogo", level: 2, experiencia: 0)
        let flareon = Pokemon(nome: "Flareon", tipo: "Fogo", level: 3, experiencia: 0)
        let houndour = Pokemon(nome: "Houndour", tipo: "Fogo", level: 3, experiencia: 0)
        let magmar = Pokemon(nome: "Magmar", tipo: "Fogo", level: 4, experiencia: 0)
        let numel = Pokemon(nome: "Numel", tipo: "Fogo", level: 4, experiencia: 0)
        let torkoal = Pokemon(nome: "Torkoal", tipo: "Fogo", level: 5, experiencia: 0)
        let marowak = Pokemon(nome: "Marowak", tipo: "Fogo", level: 5, experiencia: 0)
        
        //Pokemons de água
        let psyduck = Pokemon(nome: "Psyduck", tipo: "Agua", level: 1, experiencia: 0)
        let magikarp = Pokemon(nome: "Magikarp", tipo: "Agua", level: 1, experiencia: 0)
        let poliwag = Pokemon(nome: "Poliwag", tipo: "Agua", level: 2, experiencia: 0)
        let tentacool = Pokemon(nome: "Tentacool", tipo: "Agua", level: 2, experiencia: 0)
        let slowpoke = Pokemon(nome: "Slowpoke", tipo: "Agua", level: 3, experiencia: 0)
        let krabby = Pokemon(nome: "Krabby", tipo: "Agua", level: 3, experiencia: 0)
        let shelder = Pokemon(nome: "Shelder", tipo: "Agua", level: 4, experiencia: 0)
        let seel = Pokemon(nome: "Seel", tipo: "Agua", level: 4, experiencia: 0)
        let vaporeon = Pokemon(nome: "Vaporeon", tipo: "Agua", level: 5, experiencia: 0)
        let lapras = Pokemon(nome: "Lapras", tipo: "Agua", level: 5, experiencia: 0)
        
        //pokemons de vento
        
        let oddish = Pokemon(nome: "Oddish", tipo: "Vento", level: 1, experiencia: 0)
        let exeggcute = Pokemon(nome: "Exeggcute", tipo: "Vento", level: 1, experiencia: 0)
        let tangela = Pokemon(nome: "Tangela", tipo: "Vento", level: 2, experiencia: 0)
        let bellsprout = Pokemon(nome: "Bellsprout", tipo: "Vento", level: 2, experiencia: 0)
        let hopping = Pokemon(nome: "Hopping", tipo: "Vento", level: 3, experiencia: 0)
        let sunker = Pokemon(nome: "Sunker", tipo: "Vento", level: 3, experiencia: 0)
        let seedot = Pokemon(nome: "Seeot", tipo: "Vento", level: 4, experiencia: 0)
        let shroomish = Pokemon(nome: "Shroomish", tipo: "Vento", level: 4, experiencia: 0)
        let roselia = Pokemon(nome: "Roselia", tipo: "Vento", level: 5, experiencia: 0)
        let tropius = Pokemon(nome: "Tropius", tipo: "Vento", level: 5, experiencia: 0)
        
        //criação de jogador
        let giovanni = Jogador(nome: "Giovanni")
        let jesse = Jogador(nome: "Jesse")
        let james = Jogador(nome: "James")
        let archie = Jogador(nome: "Archie")
        
        //criação de ginásios
        
        let pewter = Ginasio(nome: "Pewter", lider: jesse)
        let cerulean = Ginasio(nome: "Cerulean", lider: james)
        let vermilion = Ginasio(nome: "Vermilion", lider: archie)
        let celadon = Ginasio(nome: "Celadon", lider: giovanni)
        
        let chimchar = Pokemon(nome: "Chimchar", tipo: "Fogo", level: 3, experiencia: 0)
        let piplup = Pokemon(nome: "Piplup", tipo: "Agua", level: 3, experiencia: 0)
        let turtwig = Pokemon(nome: "Turtwing", tipo: "Vento", level: 3, experiencia: 0)
        let pignite = Pokemon(nome: "Pignite", tipo: "Fogo", level: 6, experiencia: 0)
        let dewott = Pokemon(nome: "Dewott", tipo: "Agua", level: 6, experiencia: 0)
        let servine = Pokemon(nome: "Servine", tipo: "Vento", level: 6, experiencia: 0)
        let delphox = Pokemon(nome: "Delphox", tipo: "Fogo", level: 8, experiencia: 0)
        let greninja = Pokemon(nome: "Greninja", tipo: "Agua", level: 8, experiencia: 0)
        let chesnaught = Pokemon(nome: "Chesnaught", tipo: "Vento", level: 8, experiencia: 0)
        let groundon = Pokemon(nome: "Groundon", tipo: "Fogo", level: 10, experiencia: 0)
        let kyogre = Pokemon(nome: "Kyogre", tipo: "Agua", level: 10, experiencia: 0)
        let rayquaza = Pokemon(nome: "Rayquaza", tipo: "Vento", level: 10, experiencia: 0)
        
        jesse.pokemons.append(chimchar)
        jesse.pokemons.append(piplup)
        jesse.pokemons.append(turtwig)
        james.pokemons.append(pignite)
        james.pokemons.append(dewott)
        james.pokemons.append(servine)
        archie.pokemons.append(greninja)
        archie.pokemons.append(chesnaught)
        archie.pokemons.append(groundon)
        giovanni.pokemons.append(kyogre)
        giovanni.pokemons.append(rayquaza)
        giovanni.pokemons.append(delphox)
    

        
        itens.append(tropius)
        itens.append(roselia)
        itens.append( shroomish)
        itens.append(seedot)
        itens.append(sunker)
        itens.append(hopping)
        itens.append(bellsprout)
        itens.append(tangela)
        itens.append(exeggcute)
        itens.append(oddish)
        itens.append(lapras)
        itens.append(vaporeon)
        itens.append(seel)
        itens.append(shelder)
        itens.append(krabby)
        itens.append(slowpoke)
        itens.append(tentacool)
        itens.append(poliwag)
        itens.append(magikarp)
        itens.append(psyduck)
        itens.append(marowak)
        itens.append(torkoal)
        itens.append(numel)
        itens.append(magmar)
        itens.append(houndour)
        itens.append(flareon)
        itens.append(slugma)
        itens.append(ponyta)
        itens.append(growlithe)
        itens.append(vulpix)
        itens.append(jesse)
        itens.append(james)
        itens.append(archie)
        itens.append(giovanni)
        
        return itens
        
    }

    
    func createPlayerNome(nome:String) -> Jogador{
        let jogador = Jogador(nome: nome)
        return jogador
    }
    
    class func escolhaMenu() -> Int{
        Visao.menu()
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
    
    class func escolhaLutar(jogador:Jogador, pokemonInimigo:Pokemon) -> Bool{
        let indicePokemon: Int = GameControl.escolhaPokemonLutar(jogador: jogador)
        Visao.limpaTela()
        print("O pokemon" + jogador.pokemons[indicePokemon].nome + "foi escolhido!")
        
        if((jogador.pokemons[indicePokemon].level - pokemonInimigo.level) >= 3){
            
            Visao.venceu()
            jogador.pokemons[indicePokemon].adicionaExperienciaVitoria()
            GameControl.evoluirPokemon(pokemon: jogador.pokemons[indicePokemon])
            GameControl.ordernarPokemonsJogador(jogador: jogador)
            return true
        }else if((pokemonInimigo.level - jogador.pokemons[indicePokemon].level) >= 3){
            
            Visao.perdeu()
            jogador.pokemons[indicePokemon].adicionaExperienciaDerrota()
            GameControl.evoluirPokemon(pokemon: jogador.pokemons[indicePokemon])
            GameControl.ordernarPokemonsJogador(jogador: jogador)
            return false
            
        }else{
            
            if(jogador.pokemons[indicePokemon].tipo == "Agua" && pokemonInimigo.tipo == "Fogo"){
                
                Visao.venceu()
                jogador.pokemons[indicePokemon].adicionaExperienciaVitoria()
                GameControl.evoluirPokemon(pokemon: jogador.pokemons[indicePokemon])
                GameControl.ordernarPokemonsJogador(jogador: jogador)
                return true
                
            }else if(jogador.pokemons[indicePokemon].tipo == "Fogo" && pokemonInimigo.tipo == "Vento"){
                
                Visao.venceu()
                jogador.pokemons[indicePokemon].adicionaExperienciaVitoria()
                GameControl.evoluirPokemon(pokemon: jogador.pokemons[indicePokemon])
                GameControl.ordernarPokemonsJogador(jogador: jogador)
                return true
                
            }else if(jogador.pokemons[indicePokemon].tipo == "Vento" && pokemonInimigo.tipo == "Agua"){
                
                Visao.venceu()
                jogador.pokemons[indicePokemon].adicionaExperienciaVitoria()
                GameControl.evoluirPokemon(pokemon: jogador.pokemons[indicePokemon])
                GameControl.ordernarPokemonsJogador(jogador: jogador)
                return true
                
            }
            else if(jogador.pokemons[indicePokemon].tipo == pokemonInimigo.tipo){
                if(arc4random_uniform(2) == 1){
                    Visao.venceu()
                    jogador.pokemons[indicePokemon].adicionaExperienciaVitoria()
                    GameControl.evoluirPokemon(pokemon: jogador.pokemons[indicePokemon])
                    GameControl.ordernarPokemonsJogador(jogador: jogador)
                    return true
                    
                }
                else{
                    Visao.perdeu()
                    jogador.pokemons[indicePokemon].adicionaExperienciaDerrota()
                    GameControl.evoluirPokemon(pokemon: jogador.pokemons[indicePokemon])
                    GameControl.ordernarPokemonsJogador(jogador: jogador)
                    return false
                    
                }
            }
            else{
                Visao.perdeu()
                jogador.pokemons[indicePokemon].adicionaExperienciaDerrota()
                GameControl.evoluirPokemon(pokemon: jogador.pokemons[indicePokemon])
                GameControl.ordernarPokemonsJogador(jogador: jogador)
                return false
            }
        }
    }
}
