//
//  Player.swift
//  BasketballCardGame
//
//  Created by Rishi Kolappa on 4/22/21.
//

import UIKit

class Player {
    
    let name: String
    let photo: UIImage?
    let team: String
    let uuid: String
    
    init(name: String, photo: UIImage?, team: String, uuid: String = UUID().uuidString) {
        self.name = name
        self.photo = photo
        self.team = team
        self.uuid = uuid
    }
}//End of class

extension Player: Equatable {
    static func == (lhs: Player, rhs: Player) -> Bool {
    return lhs.uuid == rhs.uuid
}
}
