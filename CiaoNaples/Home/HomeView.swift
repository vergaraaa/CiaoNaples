//
//  HomeView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 19/10/23.
//

import SwiftUI

struct HomeView: View {
    let gridSpacing = 20.0
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Text("Ciao Naples!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .padding(.bottom, 50)
                
                LazyVGrid(
                    columns: [
                        GridItem(.fixed(150), spacing: gridSpacing),
                        GridItem(.fixed(150), spacing: gridSpacing)
                    ], spacing: gridSpacing) {
                        NavigationLink(destination: FoodAndDrinksView()) {
                            CategoryView(category: .foodAndDrinks)
                        }
                        
                        NavigationLink(destination: DailyLifeView()) {
                            CategoryView(category: .dailyLife)
                        }
                        
                        NavigationLink(destination: ViewpointsView()) {
                            CategoryView(category: .viewpoints)
                        }
                        
                        NavigationLink(destination: FolkloricPlacesView()) {
                            CategoryView(category: .folkloricPlaces)
                        }
                    }
                
                Spacer()
                
                Image(colorScheme == .light ?  "vesuvius_black" : "vesuvius_white")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 50)
                    .padding(.bottom, 35)
            }
        }
    }
}

#Preview {
    HomeView()
}
