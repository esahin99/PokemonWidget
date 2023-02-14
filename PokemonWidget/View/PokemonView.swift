//
//  PokemonView.swift
//  PokemonWidget
//
//  Created by Emre Sahin on 12.02.2023.
//

import SwiftUI

struct PokemonView: View {
    let pokemon: Pokemon
    var body: some View {
        HStack{
            ImageView(image: Image(pokemon.imageName))
                .frame(width: 100, height: 100, alignment: .center)
                .padding()
            Spacer()
            VStack{
                Text(pokemon.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
                Text(pokemon.type)
                    .bold()
                    .foregroundColor(.black)
            }
            Spacer()
        }.frame(width: UIScreen.main.bounds.width, alignment: .center)
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(pokemon: pikachu)
    }
}
