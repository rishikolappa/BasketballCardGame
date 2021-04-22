//
//  PlayerCollectionViewCell.swift
//  BasketballCardGame
//
//  Created by Rishi Kolappa on 4/22/21.
//

import UIKit

class PlayerCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var playerImageView: UIImageView!
    
    
    //MARK: - Properties
    var player: Player? {
        didSet {
            updateViews()
        }
    }
    
    //MARK: - Helper Methods
    func updateViews() {
        guard let player = player else {return}
        playerImageView.contentMode = .scaleAspectFill
        playerImageView.image = player.photo
    }
}//End of class
