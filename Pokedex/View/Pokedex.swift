//
//  Pokedex.swift
//  Pokedex
//
//  Created by Christopher on 2021-07-29.
//

import SwiftUI

struct Pokedex: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid (columns: gridItems, spacing: 18) {
                    ForEach(viewModel.pokemon) { pokemon in
                        PokemonCell(pokemon: pokemon, viewModel: viewModel)
                    }
                }
            }
            .navigationTitle("Pokedex")
        }
        
    }
}

struct Pokedex_Previews: PreviewProvider {
    static var previews: some View {
        Pokedex()
    }
}
