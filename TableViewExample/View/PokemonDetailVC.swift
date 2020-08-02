//
//  PokemonDetailVC.swift
//  TableViewExample
//
//  Created by Quang on 8/1/20.
//  Copyright © 2020 quang. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var powerLabel: UILabel!
    
    var pokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Pokemon Detail"
        
        if let pokemon = pokemon {
            nameLabel.text = pokemon.name
            powerLabel.text = "The power of pokemon: \(pokemon.power)"
        }
    }
}
