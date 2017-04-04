//
//  Pokemon.swift
//  DesafioPokemonSwift
//
//  Created by Luis Gustavo Avelino de Lima Jacinto on 04/04/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation

class Pokemon{
    
    var nome: String
    var tipo: String
    var level: Int
    var experiencia: Int
    
    init(nome: String, tipo: String, level: Int, experiencia: Int){
        self.nome = nome
        self.tipo = tipo
        self.level = level
        self.experiencia = experiencia
    }
    
    func adicionaExperienciaVitoria(){
        let experienciaVitoria = 35
        self.experiencia += experienciaVitoria
    }
    
    func adicionaExperienciaDerrota(){
        let experienciaDerrota = 10
        self.experiencia += experienciaDerrota
    }
}
