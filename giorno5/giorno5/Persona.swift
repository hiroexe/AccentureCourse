//
//  Persona.swift
//  giorno5
//
//  Created by Stefano carella on 10/06/22.
//

import Foundation

class Persona {
    private var nome: String
    private var cognome: String
    private var età: Int
    
    init(nome: String, cognome: String, età: Int) {
        self.nome = nome
        self.cognome = cognome
        self.età = età
    }
    func getNome() -> String {
        return self.nome
    }
    func getCognome() -> String {
        return self.cognome
    }
    func getEtà() -> Int {
        return self.età
    }
    func toString() -> String {
        return "Passeggero: \(getNome()), \(getCognome()), \(getEtà())"
    }
    func getCartaImbarco() -> String {
        return ""
    }
    
}
