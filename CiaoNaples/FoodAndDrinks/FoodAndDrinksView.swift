//
//  foodedrinkView.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 18/10/23.
//

import SwiftUI

struct FoodAndDrinksView: View {
    var viewModel = FoodAndDrinksViewModel()
    
    var body: some View {
        ZStack{
            Color.teal
                .ignoresSafeArea()
                .opacity(0.2)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 40) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("\(Category.food.name)")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.561, saturation: 0.928, brightness: 0.428))
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal) {
                            HStack{
                                ForEach (viewModel.food){ food in
                                    LocationCardView(location: food)
                                }
                            }
                        }.padding()
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("\(Category.drinks.name)")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.561, saturation: 0.928, brightness: 0.428))
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(viewModel.drinks) { drink in
                                    LocationCardView(location: drink)
                                }
                            }
                        }.padding()
                    }
                }
                .padding(.vertical)
            }
        }
    }
}


#Preview {
    FoodAndDrinksView()
}
