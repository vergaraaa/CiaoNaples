//
//  FoodAndDrinksViewModel.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 20/10/23.
//

import Foundation

class FoodAndDrinksViewModel {
    var food: [Location] {
        return Location.locations.filter({ $0.category == .foodAndDrinks && $0.tag == "Food" })
    }
    
    var drinks: [Location] {
        return Location.locations.filter({ $0.category == .foodAndDrinks && $0.tag == "Drinks" })
    }
}
