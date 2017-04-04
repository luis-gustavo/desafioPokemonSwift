//
//  Ginasio.swift
//  DesafioPokemonSwift
//
//  Created by Geovanni Oliveira de Jesus on 04/04/17.
//  Copyright © 2017 Luis Gustavo Avelino de Lima Jacinto. All rights reserved.
//

import Foundation

class Ginasio {
    
    var nome: String?
    var lider: String?
    
    
    init(nome: String, lider: String){
        self.nome = nome
        self.lider = lider
    }
    
    
    func setNome(nome:String){
        self.nome = nome
    }
    
    func setLider(lider:String){
        self.lider = lider
    }
    
}
