//
//  Passeggero.swift
//  giorno5
//
//  Created by Stefano carella on 10/06/22.
//

import Foundation

class Passeggero: Persona {
    
    private var cartaImbarco: String
    
    init(nome: String, cognome: String, età: Int, cartaImbarco: String) {
        self.cartaImbarco = cartaImbarco
        super.init(nome: nome, cognome: cognome, età: età)
     
    }
    override func getCartaImbarco() -> String {
        return self.cartaImbarco
    }
}
