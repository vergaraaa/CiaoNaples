//
//  DataService.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 27/10/23.
//

import Foundation

final class DataService {
    private let FAVORITES_KEY = "favorites"
    
    func save(locations: Set<Location>) {
        let favorites = Array(locations)
        UserDefaults.standard.set(favorites, forKey: FAVORITES_KEY)
    }
    
    func load() -> Set<Location> {
        let array = UserDefaults.standard.array(forKey: FAVORITES_KEY) as? [Location] ?? [Location]()
        return Set(array)
    }
}
