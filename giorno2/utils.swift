//
//  utils.swift
//  giorno2
//
//  Created by Stefano carella on 07/06/22.
//

import Foundation

func convertMToS (minutes: Int) -> Int {
    if minutes == 0 {
        return 0
    }
    return minutes * 60
}

func checkSeq() {
    var control = 0
    var read = 0
    var flag: Bool = true
    
    while (read != -1) {
        read = Int (readLine()!) ?? 0
        if (read % 2 == 0) {
            if control == 1 || control == 0 {
                control = 2
            } else if  control == 2 {
                flag = false
            }
        } else {
            if control == 2 || control == 0 {
                control = 1
            } else if  control == 1 {
                flag = false
            }
        }
    }
    
    if (flag == true) {
        print("Si")
    }
    if (flag == false) {
        print("No")
    }
}

//Func 2 stringhe in input. Ritorna la più lunga
func checkString() -> String {
    var str1: String
    var str2: String

    str1 = String (readLine()!) 
    str2 = String (readLine()!) 
    
    if (str1.count > str2.count) {
        return str1
    } else {
        return str2
    }
}

//Creare una funzione void che printa tutte le tabelline che vanno dal 2 al 10

func tabs() {
    for numbers in 2...10 {
        for factors in 1...10 {
            let res = numbers * factors
            print("\(numbers) * \(factors) = \(res)")
        }
    }
}
//Creare programma che prende in input base e altezza e printa la seguente figura
func buildShape(base: Int, height: Int) {
    for column in 1...height {
        print("\n")
        for row in 1...base {
            if column == row {
                print("", terminator:"")
            } else {
            print("*", terminator:"")
            }
        }
    }
}
//Crea una funzione che crea un vettore

func createVector() -> [Int] {
    var vector: [Int] = []
    vector.append(1)
    vector.append(34)
    return vector
}

//Funzione che prende in ingresso vettore di interi e ritorni la somma totale del vettore

func sumVector(vector: [Int]) -> Int {
    var sum = 0
    for element in vector {
       sum += element
    }
    return sum
}

//Funzione che prende in input un vettore e ritorni vero se il vett ha tutti multipli di di 5 altrimenti

func checkFive(vector: [Int]) -> Bool {
    for element in vector {
        if (element % 5 != 0) {
            return false
        }
    }
    return true
}

//Prende in input un vettore di char in ordine crescente e ritorna la lettera mancante

func findMissing(vector: [Character]) -> Character {
    var tmpVector: [UInt8] = []
    var num: UInt8

    for char in vector {
        num = char.asciiValue!
        tmpVector.append(num)
      
    }
    var i = 0
    while (i < tmpVector.count - 1) {
        if tmpVector[i + 1] - tmpVector[i] == 2 {
            var scalar = UnicodeScalar(tmpVector[i] + 1)
            var letter = Character(scalar)
            return letter
        }
        i += 1
    }
    return " "
    
            
    
    
}
