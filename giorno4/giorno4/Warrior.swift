//
//  Warrior.swift
//  giorno4
//
//  Created by Stefano carella on 09/06/22.
//

import Foundation

class Warrior {
    var name: String
    var hp: Int
    var atk: Int
    var def: Int
    
    
    init(name: String, hp: Int, atk: Int, def: Int) {
        self.name = name
        self.hp = hp
        self.atk = atk
        self.def = def
    }
    
    func info() {
        print(self.name)
        print(self.hp)
        print(self.atk)
        print(self.def)
        
    }
}
