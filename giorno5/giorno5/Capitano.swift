//
//  Capitano.swift
//  giorno5
//
//  Created by Stefano carella on 10/06/22.
//

import Foundation

class Capitano: Persona {
    
    private var oreVolo: Int
    
    init(nome: String, cognome: String, età: Int, oreVolo: Int) {
        self.oreVolo = oreVolo
        super.init(nome: nome, cognome: cognome, età: età)
       
    }
    func getOreVolo() -> Int {
        return self.oreVolo
    }
    func setOreVolo(newValue: Int) {
        self.oreVolo = newValue > 0 ? newValue : -newValue
    }
}
