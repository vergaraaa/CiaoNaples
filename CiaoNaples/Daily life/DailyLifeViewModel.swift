//
//  DailyLifeViewModel.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 24/10/23.
//

import Foundation

class DailyLifeViewModel: ObservableObject {
    @Published var picker = "Day"
    
    var day: [Location] {
        return Location.locations.filter({ $0.category == Category.dailyLife.id && $0.tag == "Day" })
    }
    
    var night: [Location] {
        return Location.locations.filter({ $0.category == Category.dailyLife.id && $0.tag == "Night" })
    }
}
