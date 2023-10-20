//
//  foodStruct.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 18/10/23.
//

import Foundation
import SwiftUI

struct Food: Identifiable{
    
    var id = UUID()
    var nameR: String = "  "
    var coverImageR: String = "no image"
    var shortdescriptionR: String = "  "
   // var images: [String]
    var descriptionR: String = "  "
    var zoneR: String = "  "
   // var recommendations: [String]
    var latitudeR: Double = 1
    var longitudeR: Double = 1

}
