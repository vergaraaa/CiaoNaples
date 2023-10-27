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
        return Location.locations.filter({ $0.category == .dailyLife && $0.tag == "Day" })
    }
    
    var night: [Location] {
        return Location.locations.filter({ $0.category == .dailyLife && $0.tag == "Night" })
    }
}
