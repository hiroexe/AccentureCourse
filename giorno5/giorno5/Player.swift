//
//  Player.swift
//  giorno5
//
//  Created by Stefano carella on 10/06/22.
//

import Foundation

class Player {
    
    private var name: String
    private var role: String
    private var number: Int
    
    init(name: String, role: String, number: Int) {
        self.name = name
        self.role = role
        self.number = number
    }
    func getName() -> String {
        return name
    }
    func getRole() -> String {
        return role
    }
    func getNumber() -> Int {
        return number
    }
    func setRole(newValue: String) {
        self.role = newValue
    }
    func setNumber(newValue: Int) {
        self.number = newValue
    }
    func toString() {
        print("Player Name: \(name)")
        print("Player Role: \(role)")
        print("Player Number: \(number)")
    }
        
    
}
