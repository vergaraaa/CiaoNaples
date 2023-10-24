//
//  Category.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 18/10/23.
//

import SwiftUI

enum Category: Int, CaseIterable, Identifiable {
    case foodAndDrinks
    case dailyLife
    case viewpoints
    case folkloricPlaces
    
    var id: Int {
        return self.rawValue
    }
    
    var name: String {
        switch self {
        case .foodAndDrinks: return "Food &\nDrinks"
        case .dailyLife: return "Daily\nLife"
        case .viewpoints: return "Viewpoints"
        case .folkloricPlaces: return "Folkloric\nPlaces"
        }
    }
    
    var image: String {
        switch self {
        case .foodAndDrinks: return "fork.knife"
        case .dailyLife: return "sun.haze"
        case .viewpoints: return "binoculars"
        case .folkloricPlaces: return "theatermasks"
        }
    }
    
    var color: Color {
        switch self {
        case .foodAndDrinks: return .mint
        case .dailyLife: return .teal
        case .viewpoints: return .cyan
        case .folkloricPlaces: return .blue
        }
    }
}
