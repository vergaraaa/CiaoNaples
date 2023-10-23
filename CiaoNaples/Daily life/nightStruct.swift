//
//  nightStruct.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 20/10/23.
//

import Foundation

struct Night: Identifiable {
    var id = UUID()
    var nameN: String = "   "
    var imageN: String = "no image"
    var zoneN: String = "   "
    var shortdescriptionN: String = "  "
   // var images: [String]
    var descriptionN: String = "  "
   // var recommendations: [String]
    var latitudeN: Double = 1
    var longitudeN: Double = 1

}
