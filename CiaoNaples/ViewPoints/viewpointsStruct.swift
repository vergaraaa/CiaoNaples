//
//  viewpointsStruct.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 20/10/23.
//

import Foundation

struct Viewpoints: Identifiable{
    var id = UUID()
    var nameV: String 
    var imagesV: String = "no image"
    var zoneV: String = "zone"
    var descriptionN: String = "short description"
   // var recommendations: [String]
    var latitudeN: Double = 1
    var longitudeN: Double = 1

}
