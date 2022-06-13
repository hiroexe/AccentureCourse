//
//  Personale.swift
//  giorno5
//
//  Created by Stefano carella on 10/06/22.
//

import Foundation

class Personale: Persona {
    
    private var mansione: Ruoli
    
    init(nome: String, cognome: String, età: Int, mansione: Ruoli) {
        self.mansione = mansione
        super.init(nome: nome, cognome: cognome, età: età)

    }
    func getMansione() -> Ruoli {
        return self.mansione
    }
    func setMansione(newValue: Ruoli) {
        self.mansione = newValue
    }
    
}
