//
//  Team.swift
//  giorno5
//
//  Created by Stefano carella on 10/06/22.
//

import Foundation

class Team {
    private var name: String
    private var players: [Player]
    private var coach: Coach?
    
    
    init(name: String) {
        self.name = name
        self.players = []
        self.coach = nil
    }
    func getName() -> String {
        return name
    }
    func getPlayers() -> [Player] {
        return players
    }
    func getCoach() -> Coach {
        return coach!
    }
    func setCoach(newValue: Coach) {
        self.coach = newValue
    }
    func addCoach(coach: Coach) -> Bool {
        self.setCoach(newValue: coach)
        return true
    }
    func addPlayers(playerToAdd: Player) ->  Bool {
        var flag = false
        
        if self.getPlayers().count < 11 {
            if playerToAdd.getRole() != "KP" {
                self.players.append(playerToAdd)
                return true
            } else {
                for player in self.players {
                    if player.getRole() == "KP" {
                        flag = true
                        
                    }
                }
            
            if flag == false {
                self.players.append(playerToAdd)
                return true
            } else {
                return false
            }
            
            }
        
        }
        return false
    }
    func toString() {
        print("Team name: \(self.getName())")
        for i in 0..<self.getPlayers().count {
            print("Players: \(self.getPlayers()[i].toString())")
        }
        print("Coach: \(self.getCoach().getName())")
   }
}
