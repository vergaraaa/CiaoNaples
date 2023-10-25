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
    
    @Namespace var animation
    
    @State var selectedLocation: Location?
    @State var showDetail = false
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color(Category.foodAndDrinks.color))
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(Category.foodAndDrinks.color).withAlphaComponent(0.2)
        UIPageControl.appearance().backgroundStyle = .prominent
    }
    
    var body: some View {
        ZStack {
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
                                    .onTapGesture {
                                        withAnimation(.spring) {
                                            selectedLocation = food
                                            showDetail.toggle()
                                        }
                                    }
                                    .matchedGeometryEffect(id: food.id, in: animation)
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
                                    .onTapGesture {
                                        withAnimation(.spring) {
                                            selectedLocation = drink
                                            showDetail.toggle()
                                        }
                                    }
                                    .matchedGeometryEffect(id: drink.id, in: animation)
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                        .frame(height: tabViewHeight)
                    }
                }
                .padding(.vertical)
            }
            
            if showDetail {
                if let location = selectedLocation {
                    DetailView(
                        showDetail: $showDetail,
                        selectedLocation: $selectedLocation,
                        location: location,
                        animation: animation
                    )
                }
            }
        }
        .navigationBarBackButtonHidden(showDetail ? true : false)
    }
}



#Preview {
    FoodAndDrinksView()
}
