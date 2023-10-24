//
//  NennellaView.swift
//  CiaoNaples
//
//  Created by maria gabriella sica on 24/10/23.
//

import SwiftUI

struct NennellaView: View {
    
    var food: Location
    
    var body: some View {
        VStack {
            Text(food.name)
                .font(.title)
            Text(food.description)
                .font(.caption)
        }
    }
}

#Preview {
    NennellaView(food: FoodAndDrinksViewModel().food[0])
}
