//
//  ContentView.swift
//  PokemonWidget
//
//  Created by Emre Sahin on 12.02.2023.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    
    @AppStorage("pokemon", store: UserDefaults(suiteName: "group.com.emresahin.PokemonWidget"))
    var pokemonData: Data = Data()
    var body: some View {
        VStack{
            ForEach(pokemonArray){ pokemon in
                PokemonView(pokemon: pokemon).onTapGesture(perform: {
                    saveUserDefaults(pokemon: pokemon)
                })
            }
        }
            
    }
    
    func saveUserDefaults(pokemon: Pokemon){
        if let pokemonData = try? JSONEncoder().encode(pokemon){
            self.pokemonData = pokemonData
            print(pokemon.name)
            WidgetCenter.shared.reloadAllTimelines()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
