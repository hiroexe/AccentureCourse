//
//  utils.swift
//  giorno4
//
//  Created by Stefano carella on 09/06/22.
//

import Foundation


//Creare una funzione
//che prenda in input
//una matrix e faccia
//la somma di tutti gli elementi
//della matrice .

func sumMatrix(matrix: [[Int]]) -> Int {
    var sum = 0
    for row in 0...matrix.count - 1 {
        for column in 0...matrix[0].count - 1 {
           sum += matrix[row][column]
        }
    }
    return sum
}

//Data una matrice di Stringhe
//trovare la stringa  che ha maggiori
//caratteri.

func findLongest(matrix: [[String]]) -> String {
    var columnIndex = 0
    var longest = ""
    for row in 0...matrix.count - 1 {
        for column in 0...matrix[columnIndex].count - 1 {
            if matrix[row][column].count > longest.count {
                longest = matrix[row][column]
                columnIndex += 1
            }
        }
    }
    return longest
}

//Data una matrice e un numero n
//determinare se esistono 2 numeri
//nella matrice tali per cui il loroo prodotto
//da come risultato il numero dato in input

func findProduct(matrix: [[Int]], productInput: Int) -> [Int] {
    let columnIndex = 0
    for row in 0...matrix.count - 1 {
        for column in 0...matrix[columnIndex].count - 1 {
            for row2 in 0...matrix.count - 1 {
                for column2 in 0...matrix[columnIndex].count - 1 {
                    if matrix[row][column] * matrix[row2][column2] == productInput {
                        return [matrix[row][column] , matrix[row2][column2]]
                    }
                   
                }
            }
        }
    }
    return [-1, -1]
}

//Stessa funzione ma trasformando la matrice in un array
func findProduct2(matrix: [[Int]], productInput: Int) -> [Int] {
    let array: [Int] = matrix.flatMap({$0})
    for el in 0...array.count - 1 {
        for el2 in 1...array.count - 1 {
            if el * el2 == productInput {
                return [el, el2]
            }
        }
    }
    return [-1, -1]
}

//Data una matrice di interi. Ritornare vero o falso se esiste che gli elem moltiplicati di una riga sono uguali agli alementi moltiplicati di una colonna

//Partendo dalla matrice creo 2 array: uno ha i prodotti delle righe, l'altro delle colonne
func checkRCproduct(matrix: [[Int]]) -> Bool {
    var arrayR: [Int] = []
    var arrayC: [Int] = []
    var product1: Int
    var product2: Int
    for row in 0...matrix.count - 1 {
        product1 = 1
        product2 = 1
        for column in 0...matrix[0].count - 1 {
            product1 *= matrix[row][column]
            product2 *= matrix[column][row]
           
        }
        arrayR.append(product1)
        arrayC.append(product2)
       
    }
    return checkSame(array1: arrayR, array2: arrayC)

}

//Funzione x checkare se tra l'array delle righe e l'array delle colonne ci sono prodotti uguali

func checkSame(array1: [Int], array2: [Int]) -> Bool {
    for el in array1 {
        if array2.contains(el) {
//        for el2 in array2 {
//            if el == el2 {
                return true
//            }
        }
    }
    return false
}

//Data una matrice di stringhe controllare se la diagonale dx e sx hanno lo stesso simbolo

func checkDiagonali(matrix: [[String]]) -> Bool {
    var flag = false
    var indexDx = matrix[0].count - 1
    for i in 0...matrix.count - 1 {
        if matrix[i][i] == matrix[i][indexDx] {
            flag = true
            indexDx -= 1
        } else {
            flag = false
            return false
        }
    }
    return flag
}


