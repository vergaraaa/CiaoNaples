//
//  dailyStruct.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 20/10/23.
//

import Foundation


struct Daily: Identifiable {
    var id = UUID()
    var nameD: String = "   "
    var imageD: String = "no image"
    var zoneD: String = "   "
    var shortdescriptionD: String = "  "
   // var images: [String]
    var descriptionD: String = "  "
   // var recommendations: [String]
    var latitudeD: Double = 1
    var longitudeD: Double = 1

}
