//
//  FolkloricPlacesViewModel.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 25/10/23.
//

import Foundation

class FolkloricPlacesViewModel {
    var folkloricPlaces: [Location] {
        return Location.locations.filter({ $0.category == .folkloricPlaces })
    }
}
