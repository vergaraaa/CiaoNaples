//
//  Location.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 18/10/23.
//

import Foundation

struct Location {
    let name: String
    let coverImage: String
    let images: [String]
    let description: String
    let zone: String
    let recommendations: [String]
    let latitude: Double
    let longitude: Double
    let category: Category
}

extension Location {
    static let locations = [
        Location(name: "Pizzeria da Michele", coverImage: "michele_cover", images: ["michele1, michele2, michele3"], description: "description", zone: "zone", recommendations: ["recommendation 1", "recommendation 2", "recommendation 3"], latitude: 1.1, longitude: 1.1, category: .foodAndDrinks),
        Location(name: "Pizzeria da Michele", coverImage: "michele_cover", images: ["michele1, michele2, michele3"], description: "description", zone: "zone", recommendations: ["recommendation 1", "recommendation 2", "recommendation 3"], latitude: 1.1, longitude: 1.1, category: .foodAndDrinks),
        Location(name: "Pizzeria da Michele", coverImage: "michele_cover", images: ["michele1, michele2, michele3"], description: "description", zone: "zone", recommendations: ["recommendation 1", "recommendation 2", "recommendation 3"], latitude: 1.1, longitude: 1.1, category: .foodAndDrinks),
        Location(name: "Pizzeria da Michele", coverImage: "michele_cover", images: ["michele1, michele2, michele3"], description: "description", zone: "zone", recommendations: ["recommendation 1", "recommendation 2", "recommendation 3"], latitude: 1.1, longitude: 1.1, category: .foodAndDrinks),
        Location(name: "Pizzeria da Michele", coverImage: "michele_cover", images: ["michele1, michele2, michele3"], description: "description", zone: "zone", recommendations: ["recommendation 1", "recommendation 2", "recommendation 3"], latitude: 1.1, longitude: 1.1, category: .foodAndDrinks),
    ]
}
