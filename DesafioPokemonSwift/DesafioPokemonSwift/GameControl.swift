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
    
    class func verificaLiderGinasio(ginasio:Ginasio, jogador:Jogador) -> Bool{
        
        if ginasio.lider?.nome == jogador.nome{
            print("Você já é o líder deste ginásio, escolha outro !")
            return false
        }else{
            return true
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
    
    func escolherConquistarGinasios(itens:NSMutableArray, currentJogador:Jogador){
        
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
                    verificaLiderGinasio = GameControl.verificaLiderGinasio(ginasio: liderGinasio, jogador: currentJogador)
                
                    if verificaLiderGinasio {
                        pokemonInimigo = (liderGinasio.lider?.pokemons[0].nome)!
                        GameControl.batalhaGinasioJogador(jogador: currentJogador, inimigo: liderGinasio.lider!, ginasio: liderGinasio)
                    }
                
                case 2:
                    liderGinasio = itens[35] as! Ginasio
                    verificaLiderGinasio = GameControl.verificaLiderGinasio(ginasio: liderGinasio, jogador: currentJogador)
                
                    if verificaLiderGinasio {
                        pokemonInimigo = (liderGinasio.lider?.pokemons[0].nome)!
                        GameControl.batalhaGinasioJogador(jogador: currentJogador, inimigo: liderGinasio.lider!, ginasio: liderGinasio)
                    }
                
                case 3:
                    liderGinasio = itens[36] as! Ginasio
                    verificaLiderGinasio = GameControl.verificaLiderGinasio(ginasio: liderGinasio, jogador: currentJogador)
                
                    if verificaLiderGinasio {
                        pokemonInimigo = (liderGinasio.lider?.pokemons[0].nome)!
                        GameControl.batalhaGinasioJogador(jogador: currentJogador, inimigo: liderGinasio.lider!, ginasio: liderGinasio)
                    }
                
                
                case 4:
                    liderGinasio = itens[37] as! Ginasio
                    verificaLiderGinasio = GameControl.verificaLiderGinasio(ginasio: liderGinasio, jogador: currentJogador)
                
                    if verificaLiderGinasio {
                        pokemonInimigo = (liderGinasio.lider?.pokemons[0].nome)!
                        GameControl.batalhaGinasioJogador(jogador: currentJogador, inimigo: liderGinasio.lider!, ginasio: liderGinasio)
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
        
}
}
