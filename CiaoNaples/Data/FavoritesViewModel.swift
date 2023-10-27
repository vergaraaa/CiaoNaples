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
    
    init() {
        loadFavorites()
    }
    
    func loadFavorites() {
        do {
            if let decodedData = UserDefaults.standard.data(forKey: "favorites") {
                let decodedArray = try JSONDecoder().decode([Location].self, from: decodedData)
                favorites = decodedArray
            }
        }
        catch {
            print(error)
        }
    }
    
    func addFavorite(location: Location) {
        favorites.append(location)
        
        if let encoded = try? JSONEncoder().encode(favorites) {
            UserDefaults.standard.set(encoded, forKey: "favorites")
        }
    }
    
    func removeFavorite(location: Location) {
        favorites = favorites.filter({ $0.id != location.id })
        
        if let encoded = try? JSONEncoder().encode(favorites) {
            UserDefaults.standard.set(encoded, forKey: "favorites")
        }
    }
}
