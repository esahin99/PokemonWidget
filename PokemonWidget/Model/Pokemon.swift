//
//  Pokemon.swift
//  PokemonWidget
//
//  Created by Emre Sahin on 12.02.2023.
//

import Foundation

struct Pokemon: Identifiable, Codable{
    
    let imageName: String
    let name: String
    let type: String
    
    var id: String{
        imageName
    }
}

let pikachu = Pokemon(imageName: "pikachu", name: "Pikachu", type: "Mouse Pokemon")
let charmander = Pokemon(imageName: "charmander", name: "Charmander", type: "Lizard Pokemon")
let bullbasaur = Pokemon(imageName: "bullbasaur", name: "Bullbasaur", type: "Seed Pokemon")

let pokemonArray = [pikachu, charmander, bullbasaur]
