//
//  GameControl.swift
//  DesafioPokemonSwift
//
//  Created by Matheus Azevedo on 04/04/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation

class GameControl{
    
    class func escolhaCacar(itens:NSMutableArray, jogador:Jogador){
        var opcao:Int
        var validado:Bool = false
        var respostaLutar:Bool
        Visao.limpaTela()
        let pokemonInimigo:Pokemon = itens[Int(arc4random_uniform(30))] as! Pokemon
        Visao.menuCacando(pokemonInimigo: pokemonInimigo)
        
        repeat{
            opcao = Int(readLine()!)!
            switch opcao{
                case 1:
                    validado = true
                    respostaLutar = GameControl.escolhaLutar(jogador: jogador, pokemonInimigo: pokemonInimigo)
                case 2:
                    if jogador.pokemons.count >= 5 {
                        Visao.excedeNumeroPokemons()
                    }else{
                        if arc4random_uniform(2) == 1 {
                            jogador.pokemons.append(pokemonInimigo)
                            GameControl.ordernarPokemonsJogador(jogador: jogador)
                            Visao.capturouPokemon()
                        }else{
                            Visao.naoCapturouPokemon()
                        }
                    }
                    validado = true
        
                case 3:
                    Visao.fugiu()
                    validado = true
                
                default:
                    print("Insira uma opção válida: ")
            }
            
        }while !validado
        
    }
    
    class func verificaLiderGinasio(ginasio:Ginasio, jogador:Jogador) -> Bool{
        
        if ginasio.lider?.nome == jogador.nome{
            print("Você já é o líder deste ginásio, escolha outro !")
            return false
        }else{
            return true
        }
    }
    
    class func escolherConquistarGinasios(itens:NSMutableArray, jogador:Jogador){
        
        var opcao:Int
        var verificaLiderGinasio:Bool
        Visao.limpaTela()
        repeat{
            Visao.menuGinasios(itens: itens)
            var liderGinasio:Ginasio
            
            opcao = Int(readLine()!)!
            var pokemonInimigo:String
            
            Visao.limpaTela()
            
            switch opcao {
                
            case 1:
                liderGinasio = itens[34] as! Ginasio
                verificaLiderGinasio = GameControl.verificaLiderGinasio(ginasio: liderGinasio, jogador: jogador)
                
                if verificaLiderGinasio {
                    pokemonInimigo = (liderGinasio.lider?.pokemons[0].nome)!
                    GameControl.batalhaGinasioJogador(jogador: jogador, inimigo: liderGinasio.lider!, ginasio: liderGinasio)
                }
                
            case 2:
                liderGinasio = itens[35] as! Ginasio
                verificaLiderGinasio = GameControl.verificaLiderGinasio(ginasio: liderGinasio, jogador: jogador)
                
                if verificaLiderGinasio {
                    pokemonInimigo = (liderGinasio.lider?.pokemons[0].nome)!
                    GameControl.batalhaGinasioJogador(jogador: jogador, inimigo: liderGinasio.lider!, ginasio: liderGinasio)
                }
                
            case 3:
                liderGinasio = itens[36] as! Ginasio
                verificaLiderGinasio = GameControl.verificaLiderGinasio(ginasio: liderGinasio, jogador: jogador)
                
                if verificaLiderGinasio {
                    pokemonInimigo = (liderGinasio.lider?.pokemons[0].nome)!
                    GameControl.batalhaGinasioJogador(jogador: jogador, inimigo: liderGinasio.lider!, ginasio: liderGinasio)
                }
                
                
            case 4:
                liderGinasio = itens[37] as! Ginasio
                verificaLiderGinasio = GameControl.verificaLiderGinasio(ginasio: liderGinasio, jogador: jogador)
                
                if verificaLiderGinasio {
                    pokemonInimigo = (liderGinasio.lider?.pokemons[0].nome)!
                    GameControl.batalhaGinasioJogador(jogador: jogador, inimigo: liderGinasio.lider!, ginasio: liderGinasio)
                }
                
            case 5:
                //Retorna ao menu inicial
                break
            default:
                print()
                print("Escolha um ginásio válido")
            }
            
        } while (opcao != 5)
        
    }
    
    class func inicializaPokemon() -> NSMutableArray{
        //array
        let itens: NSMutableArray = NSMutableArray()
        
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
    

        itens.add(tropius)
        itens.add(roselia)
        itens.add(shroomish)
        itens.add(seedot)
        itens.add(sunker)
        itens.add(hopping)
        itens.add(bellsprout)
        itens.add(tangela)
        itens.add(exeggcute)
        itens.add(oddish)
        itens.add(lapras)
        itens.add(vaporeon)
        itens.add(seel)
        itens.add(shelder)
        itens.add(krabby)
        itens.add(slowpoke)
        itens.add(tentacool)
        itens.add(poliwag)
        itens.add(magikarp)
        itens.add(psyduck)
        itens.add(marowak)
        itens.add(torkoal)
        itens.add(numel)
        itens.add(magmar)
        itens.add(houndour)
        itens.add(flareon)
        itens.add(slugma)
        itens.add(ponyta)
        itens.add(growlithe)
        itens.add(vulpix)
        itens.add(jesse)
        itens.add(james)
        itens.add(archie)
        itens.add(giovanni)
        itens.add(pewter)
        itens.add(cerulean)
        itens.add(vermilion)
        itens.add(celadon)
        
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
    
    class func batalhaGinasioJogador(jogador:Jogador, inimigo:Jogador, ginasio:Ginasio){
        
        var pokemonInimigo:String
        
        pokemonInimigo = inimigo.pokemons[0].nome
        
        print("O pokemon adversário é o : " + pokemonInimigo)
        print("Round 1!")
        print()
        
        var estatusBatalha : Bool = GameControl.escolhaLutar(jogador: jogador, pokemonInimigo: inimigo.pokemons[0])
        
        if(estatusBatalha){
            //usuário ganhou o primeiro round
            print("O pokemon adversário é o : " + pokemonInimigo)
            print("Round 2!")
            print()
            
            estatusBatalha = GameControl.escolhaLutar(jogador: jogador, pokemonInimigo: inimigo.pokemons[1])
            
            if(estatusBatalha){
                //usuário ganhou o segundo round
                print("O pokemon adversário é o : " + pokemonInimigo)
                print("Round 3!")
                print()
                estatusBatalha = GameControl.escolhaLutar(jogador:jogador, pokemonInimigo:inimigo.pokemons[2])
                
                if(estatusBatalha){
                    //o usuário ganhou os 3 rounds e vira o novo lider do ginásio
                    Visao.limpaTela()
                    print("Parabéns! você virou o novo líder desse ginásio!")
                    ginasio.lider = jogador
                    
                }else{
                    //o usuário ganhou o pimeiro o segundo e perdeu o terceiro
                    //o usuário vira líder de ginásio
                    Visao.limpaTela()
                    print("Parabéns! você virou o novo líder desse ginásio!")
                    ginasio.lider = jogador
                }
            }else{
                //usuário perdeu o segundo round
                print("O pokemon adversário é o : " + pokemonInimigo)
                print("Round 3")
                estatusBatalha = GameControl.escolhaLutar(jogador:jogador, pokemonInimigo:inimigo.pokemons[1])
                
                if(estatusBatalha){
                    //usuário ganhou o primeiro round perdeu o segundo e ganhou o terceiro
                    //vira líder de ginásio
                    Visao.limpaTela()
                    print("Parabéns! você virou o novo líder desse ginásio!")
                    ginasio.lider = jogador
                    
                }else{
                    //o usuário perdeu o segundo e o terceiro round
                    Visao.limpaTela()
                    print("Infelizmente não foi dessa vez, evolua seus pokemons e tente novamente!")
                    
                }
                
            }
        }else{
            //usuário perdeu o primeiro round
            print("O pokemon adversário é o : " + pokemonInimigo)
            print("Round 2!");
            print()
            estatusBatalha = GameControl.escolhaLutar(jogador:jogador, pokemonInimigo:inimigo.pokemons[0])
            
            if(estatusBatalha){
                //perdeu o primeiro e ganhou o segundo
                print("O pokemon adversário é o : ", pokemonInimigo)
                print("Round 3!");
                print()
                estatusBatalha = GameControl.escolhaLutar(jogador:jogador, pokemonInimigo:inimigo.pokemons[1])
                
                if(estatusBatalha){
                    //perdeu o primeiro, ganhou o segundo e o terceiro
                    //jogador vira líder do ginásio
                    Visao.limpaTela()
                    print("Parabéns! você virou o novo líder desse ginásio!")
                    ginasio.lider = jogador
                }
            }else{
                //jogador perdeu o primeiro e o segundo round
                print("O pokemon adversário é o : ", pokemonInimigo)
                print("Round 3!");
                print()
                estatusBatalha = GameControl.escolhaLutar(jogador:jogador, pokemonInimigo:inimigo.pokemons[0])
                
                if(estatusBatalha){
                    //o usuário perdeu os dois pimeiros e ganhou o último
                    Visao.limpaTela()
                    print(" Infelizmente não foi dessa vez que você virou líder do ginásio")
                    print("Evolua seus pokemons, treine bastante e volte para tentar novamente!")
                    
                }else{
                //o usuário perdeu os três rounds
                Visao.limpaTela()
                print("Infelizmente não foi dessa vez que você virou líder do ginásio")
                print("Evolua seus pokemons, treine bastante e volte para tentar novamente!")
            }
        }
    }
        
    }
}
