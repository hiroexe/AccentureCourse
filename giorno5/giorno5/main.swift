//
//  main.swift
//  giorno5
//
//  Created by Stefano carella on 10/06/22.
//

import Foundation
/*
var Phone1 = Phone(model: "S9", brand: "Samsung", price: 659, imei: "S9LVS66NC", isDualSim: true)
var Phone2 = Phone(model: "Iphone", brand: "Apple", price: 999, imei: "IAMW2HB5", isDualSim: false)
var Phone3 = Phone(model: "Iphone", brand: "Apple", price: 1002, imei: "IAMW2HB5", isDualSim: true)

var phones: [Phone] = []
phones.append(Phone2)
phones.append(Phone1)
phones.append(Phone3)


func findHighPrice(phones: [Phone]) -> String {
    var phonesList = phones
    phonesList = phonesList.sorted(by: { $0.getPrice() > $1.getPrice() } )
    return "\(phonesList[0].getModel()) is the most expensive with a price of \(phonesList[0].getPrice())"
}
print(findHighPrice(phones: phones))


var team = Team(name: "Milan")
team.addPlayers(playerToAdd: Player(name: "Divock Origi", role: "ST", number: 9))
team.addPlayers(playerToAdd: Player(name: "Mike Maignan", role: "KP", number: 1))
team.addPlayers(playerToAdd: Player(name: "Gigi Donnarumma", role: "KP", number: 99))
team.addCoach(coach: Coach(name: "Pioli", salary: 1000000))
team.toString()
*/
/*
 Persona: nome, cognome, età | get e set, tostring
 Capitano: extends persona: num ore di volo, |
 Personale: extends persona: mansione tecnico o di bordo
 Passeggero: carta d'imbarco (String)
 Aereo: codice volo, [Persona]: capitano, personale e passeggero, capienza max, numerodiorenecessarie x pilota |
            addcapitano: aggiunge un cap se e solo se non esiste un altro capitano gia presente e se il capitano ha le ore necessarie di volo x quell aereo -> Bool
            addPersona: input persona (personale o passeggero), personale instanceof sempre quanti ne voglio anche se pieno, se è passeggero se c'è posto, se il codice dell aereo corrispomde alla carta dimbarco
 Aeroporto: è formato da un vettore di aerei | fadecollareaereo: prendi un aereo random e toglilo dall aereoporto
 
 
 */

var volo = Aereo(codiceVolo: "AAAA", capienzaMax: 100, oreDiVoloNecessarie: 10)
var pass = Passeggero(nome: "Ste", cognome: "Carella", età: 18, cartaImbarco: "AAAA")
print(volo.getPersoneSulVolo())
print(volo.addPersona(persona: pass))
print(volo.getPersoneSulVolo()[0].toString())




