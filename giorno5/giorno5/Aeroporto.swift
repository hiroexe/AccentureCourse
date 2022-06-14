//
//  Aeroporto.swift
//  giorno5
//
//  Created by Stefano carella on 10/06/22.
//

import Foundation

class Aeroporto {
    
    private var aerei: [Aereo]
    
    init(aerei: [Aereo]) {
        self.aerei = aerei
    }
    func getAerei() ->  [Aereo] {
        return self.aerei
    }
    
    func liftOff() -> Aereo? {
      if aerei.isEmpty {
        let launch = Int.random(in: 0...aerei.count)
        let launchedAereo = self.getAerei()[launch]
        self.aerei.remove(at: launch)
        return launchedAereo
        } else {
         return nil
        }
    }
//    private func generaCodiceVolo() -> String {
//        let myVettChar : [String] = ["a","b","c","d","e","f","7","8", "9"]
//        var myCode : String = ""
//        for _ in 1...10 {
//            myCode += myVettChar[Int.random(in: 0...myVettChar.count - 1)]
//        }
//        return myCode
//    }
        
}
