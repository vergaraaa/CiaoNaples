//
//  Category.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 18/10/23.
//

import Foundation

enum Category: Int, CaseIterable, Identifiable {
    case foodAndDrinks
    case dailyLife
    case museums
    case gardens
    case viewpoints
    case folkloricPlaces
    
    var id: Int {
        return self.rawValue
    }
    
    var name: String {
        switch self {
        case .foodAndDrinks: return "Food & Drinks"
        case .dailyLife: return "Daily Life"
        case .museums: return "Museums"
        case .gardens: return "Gardens"
        case .viewpoints: return "Viewpoints"
        case .folkloricPlaces: return "Folkloric Places"
        }
    }
    
    var image: String {
        switch self {
        case .foodAndDrinks: return "fork.knife"
        case .dailyLife: return "sun.haze"
        case .museums: return "building.columns"
        case .gardens: return "leaf"
        case .viewpoints: return "binoculars"
        case .folkloricPlaces: return "theatermasks"
        }
    }
}
