//
//  HomeView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 19/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.teal
                    .ignoresSafeArea()
                    .opacity(0.2)
                
                VStack {
                    Text("What to do today?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 50.0)
                        .foregroundColor(Color(hue: 0.561, saturation: 0.928, brightness: 0.428))
                    
                    VStack {
                        NavigationLink(destination: FoodAndDrinksView()){
                            CategoryView(title: "Food\n&\nDrinks", image: "fork.knife")
                        }
                        
                        HStack{
                            VStack(spacing: 50) {
                                NavigationLink (destination: Text("Folkloric Places")){
                                    CategoryView(title: "Folkloric\nPlaces", image: "theatermasks")
                                }
                                
                                
                                NavigationLink (destination: Text("Viewpoints")){
                                    CategoryView(title: "Viewpoints", image: "binoculars")
                                }
                            }
                            
                            Spacer()
                            
                            Image("FirstView")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150, alignment: .center)
                            
                            Spacer()
                            
                            VStack(spacing: 50) {
                                NavigationLink (destination: Text("Daily Life")){
                                    CategoryView(title: "Daily\nLife", image: "sun.haze")
                                }
                                
                                NavigationLink (destination: Text("Museums")){
                                    CategoryView(title: "Museums", image: "building.columns")
                                }
                            }
                        }
                        .padding(.horizontal)

                        
                        NavigationLink (destination: Text("Gardens")){
                            CategoryView(title: "Gardens", image: "leaf")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
