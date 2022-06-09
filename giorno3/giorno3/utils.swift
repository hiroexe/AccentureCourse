//
//  utils.swift
//  giorno3
//
//  Created by Stefano carella on 08/06/22.
//

import Foundation

func maxElem(vector: [Int]) -> Int {
    var max: Int = vector[0]
    for el in vector {
        if (el > max) {
            max = el
        }
    }
    return max
}

func minElem(vector: [Int]) -> Int {
    var min: Int = vector[0]
    for el in vector {
        if (el < min) {
            min = el
        }
    }
    return min
}

func sumElem(vector1: [Int], vector2: [Int]) -> [Int] {
    var sumVector: [Int] = []
    for el in 0...vector1.count - 1 {
        sumVector[el] = vector1[el] + vector2[el]
    }
    return sumVector
}
func findMaxRep(vector: [Int]) -> String {
    var count: [Int : Int] = [:]
    for el in vector {
        if count.keys.contains(el) {
            count[el]! += 1
        } else {
            count[el] = 1
        }
    }
    var response: Int = vector[0]
    var max: Int = 0
    for (key, value) in count {
        if value > max {
            max = value
            response = key
        }
    }
    return("Il numero più presente è \(response), ripetuto \(max) volte")
}
//Output risultato lancio due dadi random

func randomDices() -> Int {
    let sum = Int.random(in: 1...6) + Int.random(in: 1...6)
    return sum
}
func diceSimulation() {
    var vector: [Int] = [-1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    for _ in 1...10000 {
        let res = randomDices()
        vector[res] += 1
    }
    for el in 2...12 {
        vector[el] /= 100
    }
    for num in 2...12 {
        for _ in 0...vector[num] {
            print("*", terminator:"")
        }
        print("\n")
    }
}
//Funzione che prende in input un numero e mi ritorna in output un vettore di vettori
//Genera un vettore in base al numero -> vettore random di boolean
//Cerco se ci sono due valori adiacenti a true. Se esiste ritorno un vettore con le posizione che ho trovato se non esiste ritorno [-1, -1]
//se si riesce se ci sono diverse coppie libere ritorna le piu centrali

func findFreePos(vectorSize: Int) -> [[Int]] {
    var allPos: [Bool] = Array(repeating: false, count: vectorSize)
    for el in 0...vectorSize - 1 {
        allPos[el] = Bool.random()
    }
    print(allPos)
    var freePos: [[Int]] = []
    for el in 0...allPos.count - 2 {
        if (allPos[el] && allPos[el + 1]) {
            freePos.append([el, el + 1])
        }
    }
    if freePos.isEmpty {
        freePos[0] = [-1, -1]
        return freePos
    } else {
    return freePos
    }
}
func findMostCentered(freePos: [[Int]], vectorSize: Int) -> [Int] {
    print(freePos)
    var centerPos = [0, 0]
    var distanceFromMiddle = 10000000
    var tmpDistance = 100000
    for el in freePos {
        if (el.first! < vectorSize/2) {
        tmpDistance = abs(vectorSize/2) - el.last!
        } else {
            tmpDistance = abs(el.last! - vectorSize/2)
        }
        if tmpDistance < distanceFromMiddle {
            distanceFromMiddle = tmpDistance
            centerPos = el
        }
    }
    return centerPos
    
}


