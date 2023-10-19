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
    var nameR: String
    var imageR: String = "noimage"
    var shortdescription: String = "  "
}
