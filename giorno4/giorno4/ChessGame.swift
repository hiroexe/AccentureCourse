//
//  ChessGame.swift
//  giorno4
//
//  Created by Stefano carella on 09/06/22.
//

import Foundation

class ChessGame {
    
    
    //Riempie la scacchiera di /
    var scacchiera: [[String]] = Array(repeating: Array(repeating: "/", count: 8), count: 8)
    
    //Inizializza la scacchiera con le pedine
    init() {
        scacchiera[0] = ["T", "C", "A", "K", "Q", "A", "C", "T"]
        scacchiera[7] = ["T", "C", "A", "K", "Q", "A", "C", "T"]
        scacchiera[1] = Array(repeating: "p", count: 8)
        scacchiera[6] = Array(repeating: "P", count: 8)
    }
    
    //Muove di 1 in avanti le pedine scelte tramite parametri passati alla funzione
    func move(p1a: Int, p1b: Int, p2a: Int, p2b: Int) {
        scacchiera[p1a + 1][p1b] = scacchiera[p1a][p1b]
        scacchiera[p1a][p1b] = "/"
        scacchiera[p2a - 1][p2b] = scacchiera[p2a][p2b]
        scacchiera[p2a][4] = "/"  
        
    }
    
    //Stampa lo stato della scacchiera
    func show(matrix: [[String]]) {
        for r in 0...7 {
            print("\n")
            for c in 0...7 {
                print(matrix[r][c], terminator:"")
                
            }
           
        }
    }
    
}
