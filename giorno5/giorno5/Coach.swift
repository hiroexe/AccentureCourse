//
//  Coach.swift
//  giorno5
//
//  Created by Stefano carella on 10/06/22.
//

import Foundation

class Coach {
    
    private var name: String
    private var salary: Double
    
    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary
    }
    func getName() -> String {
        return name
    }
    func getSalary() -> Double {
        return salary
    }
    func setSalary(newValue: Double) {
        self.salary = newValue
    }
}

