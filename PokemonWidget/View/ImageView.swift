//
//  ImageView.swift
//  PokemonWidget
//
//  Created by Emre Sahin on 12.02.2023.
//

import SwiftUI

struct ImageView: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.yellow,lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("charmander"))
    }
}
