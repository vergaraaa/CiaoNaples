//
//  drinkStruct.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 19/10/23.
//

import Foundation
import SwiftUI

struct Drink: Identifiable {
    
    var id = UUID()
    var nameB: String = "  "
    var coverImageB: String = "no image"
    var shortdescriptionB: String = "  "
   // var images: [String]
    var descriptionB: String = "  "
    var zone: String = "  "
   // var recommendations: [String]
    var latitudeB: Double = 1
    var longitudeB: Double = 1
}
