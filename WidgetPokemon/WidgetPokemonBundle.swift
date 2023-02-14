//
//  WidgetPokemonBundle.swift
//  WidgetPokemon
//
//  Created by Emre Sahin on 14.02.2023.
//

import WidgetKit
import SwiftUI

@main
struct WidgetPokemonBundle: WidgetBundle {
    var body: some Widget {
        WidgetPokemon()
        WidgetPokemonLiveActivity()
    }
}
