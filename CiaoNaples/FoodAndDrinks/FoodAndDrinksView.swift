//
//  foodedrinkView.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 18/10/23.
//

import SwiftUI

struct FoodAndDrinksView: View {
    let tabViewHeight = 350.0
    
    var viewModel = FoodAndDrinksViewModel()
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color(Category.foodAndDrinks.color))
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(Category.foodAndDrinks.color).withAlphaComponent(0.2)
        UIPageControl.appearance().backgroundStyle = .prominent
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading, spacing: -40) {
                    Text("Food")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fontDesign(.rounded)
                        .padding(.horizontal)
                    
                    TabView {
                        ForEach(viewModel.food){ food in
                            LocationCardView(location: food)
                        }
                    }
                    .tabViewStyle(.page)
                    .frame(height: tabViewHeight)
                }
                
                VStack(alignment: .leading, spacing: -40) {
                    Text("Drinks")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fontDesign(.rounded)
                        .padding(.horizontal)
                    
                    TabView {
                        ForEach(viewModel.drinks){ drink in
                            LocationCardView(location: drink)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: tabViewHeight)
                }
            }
            .padding(.vertical)
        }
    }
}


#Preview {
    FoodAndDrinksView()
}
