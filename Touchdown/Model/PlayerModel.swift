//
//  PlayerModel.swift
//  Touchdown
//
//  Created by Orlando Moraes Martins on 04/02/23.
//

import Foundation

struct Player: Codable, Identifiable {
    let id: Int
    let image: String
    
    static let allPlayers: [Player] = Bundle.main.decode("player.json")
    static let example = allPlayers[0]
}
