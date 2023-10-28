//
//  foodedrinkView.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 18/10/23.
//

import SwiftUI

struct FoodAndDrinksView: View {
    
    @StateObject var viewModel = FoodAndDrinksViewModel()
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                Picker("", selection: $viewModel.picker) {
                    Text("Food").tag("Food")
                    
                    Text("Drinks").tag("Drinks")
                }
                .padding()
                .pickerStyle(.segmented)
                
                if(viewModel.picker == "Food") {
                    ForEach(viewModel.food) { food in
                        NavigationLink {
                            DetailView(location: food)
                        } label: {
                            LocationCardView(location: food)
                        }
                    }
                }
                else {
                    ForEach(viewModel.drinks) { drink in
                        NavigationLink {
                            DetailView(location: drink)
                        } label: {
                            LocationCardView(location: drink)
                        }
                    }
                }
            }
            .padding(.vertical)
        }
    }
}



#Preview {
    FoodAndDrinksView()
}
