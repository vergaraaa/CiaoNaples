//
//  ViewpointsViewModel.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 25/10/23.
//

import Foundation

class ViewpointsViewModel {
    var viewpoints: [Location] {
        return Location.locations.filter({ $0.category == Category.viewpoints.id })
    }
}
