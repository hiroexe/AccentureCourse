//
//  main.swift
//  giorno4
//
//  Created by Stefano carella on 09/06/22.
//

import Foundation

//print(sumMatrix(matrix: [[1, 2 , 3], [1, 2 , 3, 4]]))
//print(findLongest(matrix: [["ciao" , "gg" , "h" ] , ["ff" , "qw" ]]))
//print(findProduct(matrix: [[1 , 3 , 4 ] , [ 5 , 3 , 1]], productInput: 12))
//print(findProduct2(matrix: [[1 , 3 , 4 ] , [ 5 , 3 , 1]], productInput: 12))
//print(checkRCproduct(matrix: [[1, 2 ,3], [4, 2, 1], [1, 1 ,1]]))

//print(checkDiagonali(matrix:
//                        [["C", "d", "t", "C"], ["x", "i", "i", "y"], ["p", "a", "a", "z"], ["o", "p", "5", "o"]]))

var Chess = ChessGame()
Chess.show(matrix: Chess.scacchiera)
print("\n")
print("******************************")
Chess.move(p1a: 1 , p1b: 6, p2a: 6, p2b: 2)
Chess.show(matrix: Chess.scacchiera)
print("\n")

var myWarrior = Warrior(name: "Belzeborf", hp: 10, atk: 8 , def: 7)

myWarrior.info()
