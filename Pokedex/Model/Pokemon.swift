//
//  Pokemon.swift
//  Pokedex
//
//  Created by Christopher on 2021-07-29.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

