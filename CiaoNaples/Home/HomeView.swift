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
                        NavigationLink(destination: Text("Food And Drinks")){
                            CategoryView(category: .foodAndDrinks)
                        }
                        
                        HStack{
                            VStack(spacing: 50) {
                                NavigationLink (destination: Text("Folkloric Places")){
                                    CategoryView(category: .folkloricPlaces)
                                }
                                
                                
                                NavigationLink (destination: Text("Viewpoints")){
                                    CategoryView(category: .viewpoints)
                                }
                            }
                            
                            Image("FirstView")
                                .resizable()
                                .frame(width: 190, height: 190, alignment: .center)
                            
                            VStack(spacing: 50) {
                                NavigationLink (destination: Text("Daily Life")){
                                    CategoryView(category: .dailyLife)
                                }
                                
                                NavigationLink (destination: Text("Museums")){
                                    CategoryView(category: .museums)
                                }
                            }
                        }
                        
                        NavigationLink (destination: Text("Gardens")){
                            CategoryView(category: .gardens)
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
