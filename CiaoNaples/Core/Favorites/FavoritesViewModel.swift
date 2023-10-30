//
//  FavoritesViewModel.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 27/10/23.
//

import SwiftUI
import Foundation

class FavoritesViewModel: ObservableObject {
    static let shared = FavoritesViewModel()
    
    @Published var favorites: [Location] = []
    @Published var foodAndDrinks: [Location] = []
    @Published var dailyLife: [Location] = []
    @Published var viewpoints: [Location] = []
    @Published var folkloricPlaces: [Location] = []
    
    init() {
        loadFavorites()
    }
    
    func loadFavorites() {
        do {
            if let decodedData = UserDefaults.standard.data(forKey: "favorites") {
                let decodedArray = try JSONDecoder().decode([Location].self, from: decodedData)
                favorites = decodedArray
                
                filterFavorites()
            }
        }
        catch {
            print(error)
        }
    }
    
    func addFavorite(location: Location) {
        favorites.append(location)
        
        filterFavorites()
        
        if let encoded = try? JSONEncoder().encode(favorites) {
            UserDefaults.standard.set(encoded, forKey: "favorites")
        }
    }
    
    func removeFavorite(location: Location) {
        favorites = favorites.filter({ $0.id != location.id })
        
        filterFavorites()
        
        if let encoded = try? JSONEncoder().encode(favorites) {
            UserDefaults.standard.set(encoded, forKey: "favorites")
        }
    }
    
    private func filterFavorites() {
        foodAndDrinks = favorites.filter({ $0.category == Category.foodAndDrinks.id })
        dailyLife = favorites.filter({ $0.category == Category.dailyLife.id })
        viewpoints = favorites.filter({ $0.category == Category.viewpoints.id })
        folkloricPlaces = favorites.filter({ $0.category == Category.folkloricPlaces.id })
    }
}
