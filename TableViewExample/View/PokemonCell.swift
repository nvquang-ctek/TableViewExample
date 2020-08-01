//
//  PokemonCell.swift
//  TableViewExample
//
//  Created by Quang on 8/1/20.
//  Copyright © 2020 quang. All rights reserved.
//

import UIKit

class PokemonCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var powerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(_ pokemon: Pokemon) {
        nameLabel.text = pokemon.name
        powerLabel.text = "Power: \(pokemon.power)"
    }
}
