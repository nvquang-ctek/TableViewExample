//
//  ListPokemonsVC.swift
//  TableViewExample
//
//  Created by Quang on 8/1/20.
//  Copyright © 2020 quang. All rights reserved.
//

import UIKit

class ListPokemonsVC: UIViewController {
    @IBOutlet weak var pokemonsTableView: UITableView!
    
    private var pokemons: [Pokemon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "List Pokemons"
        
        // đăng ký UITableViewCell cho table đối với .xib file:
        pokemonsTableView.register(UINib(nibName: "PokemonCell", bundle: nil), forCellReuseIdentifier: "PokemonCell")
        pokemonsTableView.delegate = self
        pokemonsTableView.dataSource = self
        
        pokemons = Pokemon.fetchAllPokemons()
        pokemonsTableView.reloadData()
    }
}

extension ListPokemonsVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonCell", for: indexPath) as? PokemonCell {
            let pokemon = pokemons[indexPath.row]
            cell.configureCell(pokemon)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = PokemonDetailVC()
        detailVC.pokemon = pokemons[indexPath.row]
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
