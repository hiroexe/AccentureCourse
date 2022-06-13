//
//  Aereo.swift
//  giorno5
//
//  Created by Stefano carella on 10/06/22.
//

import Foundation

class Aereo {
    private var codiceVolo: String
    private var personeSulVolo: [Persona]
    private var capienzaMax: Int
    private var oreDiVoloNecessarie: Int
    
    
    init(codiceVolo: String, capienzaMax: Int, oreDiVoloNecessarie: Int) {
        self.codiceVolo = codiceVolo
        self.personeSulVolo = []
        self.capienzaMax = capienzaMax
        self.oreDiVoloNecessarie = oreDiVoloNecessarie
    }
    func getCodiceVolo() -> String {
        return self.codiceVolo
    }
    func getPersoneSulVolo() -> [Persona] {
        return self.personeSulVolo
    }
    func getCapienzaMax() -> Int {
        return self.capienzaMax
    }
    func getOreDiVoloNecessarie() -> Int {
        return self.oreDiVoloNecessarie
    }
//    func set(newValue: String) {
//        self.codiceVolo = newValue
//    }
    func addCapitano(capitano: Capitano) -> Bool {
        if self.getPersoneSulVolo().contains(where: {$0 is Capitano}) && capitano.getOreVolo() < getOreDiVoloNecessarie() {
            return false
        } else {
            self.personeSulVolo.append(capitano)
            return true
        }
    }
    func addPersona(persona: Persona) -> Bool {
        if persona is Passeggero {
            if self.personeSulVolo.count < self.capienzaMax || persona.getCartaImbarco() == self.codiceVolo {
                self.personeSulVolo.append(persona)
                return true
            }
            return false
        } else if persona is Personale {
            if self.personeSulVolo.count < self.capienzaMax {
                self.personeSulVolo.append(persona)
                return true
            }
            return false
            
        }
        return false
    }
}
