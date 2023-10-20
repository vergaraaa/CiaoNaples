//
//  FoodAndDrinksViewModel.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 20/10/23.
//

import Foundation

class FoodAndDrinksViewModel {
    var food: [Location] {
        return Location.locations.filter({ $0.category == .food })
    }
    
    var drinks: [Location] {
        return Location.locations.filter({ $0.category == .drinks })
    }
}
