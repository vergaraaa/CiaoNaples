//
//  eventsStruct.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 23/10/23.
//

import Foundation


struct Events: Identifiable {
    var id = UUID()
    var nameE: String = "   "
    var imageE: String = "no image"
    var zoneE: String = "   "
    var shortdescriptionE: String = "  "
   // var images: [String]
    var descriptionE: String = "  "
   // var recommendations: [String]
    var latitudeE: Double = 1
    var longitudeE: Double = 1

}
