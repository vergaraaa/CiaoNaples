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
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color(HomeCategory.foodAndDrinks.color))
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(HomeCategory.foodAndDrinks.color).withAlphaComponent(0.2)
        UIPageControl.appearance().backgroundStyle = .prominent
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading, spacing: -40) {
                    Text("\(Category.food.name)")
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
                    Text("\(Category.drinks.name)")
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
