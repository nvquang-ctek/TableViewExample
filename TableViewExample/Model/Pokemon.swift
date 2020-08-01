//
//  Pokemon.swift
//  TableViewExample
//
//  Created by Quang on 8/1/20.
//  Copyright © 2020 quang. All rights reserved.
//

import Foundation

struct Pokemon {
    let name: String
    let power: Int
}

extension Pokemon {
    static func fetchAllPokemons() -> [Pokemon] {
        return [
            Pokemon(name: "Pikachu", power: 1000),
            Pokemon(name: "Pinutu", power: 800),
        ]
    }
}
