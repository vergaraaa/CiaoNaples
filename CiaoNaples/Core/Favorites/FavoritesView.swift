//
//  FavoritesView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 19/10/23.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var viewModel : FavoritesViewModel
    
    var body: some View {
        NavigationStack {
            if viewModel.favorites.isEmpty {
                ContentUnavailableView("No favorites", systemImage: "heart", description: Text("You don't have any favorites yet."))
                    .symbolVariant(.slash)
            }
            else {
                VStack {
                    Text("My favorites")
                        .font(.largeTitle.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    List {
                            if !viewModel.foodAndDrinks.isEmpty {
                                Section("Food And Drinks") {
                                    ForEach(viewModel.foodAndDrinks) { foodAndDrink in
                                        NavigationLink {
                                            DetailView(location: foodAndDrink)
                                        } label: {
                                            FavoriteRowView(location: foodAndDrink)
                                        }
                                    }
                                }
                            }
                            
                            if !viewModel.dailyLife.isEmpty {
                                Section("Daily Life") {
                                    ForEach(viewModel.dailyLife) { dayliLife in
                                        NavigationLink {
                                            DetailView(location: dayliLife)
                                        } label: {
                                            FavoriteRowView(location: dayliLife)
                                        }
                                    }
                                }
                            }
                            
                            if !viewModel.viewpoints.isEmpty {
                                Section("Viewpoints") {
                                    ForEach(viewModel.viewpoints) { viewpoint in
                                        NavigationLink {
                                            DetailView(location: viewpoint)
                                        } label: {
                                            FavoriteRowView(location: viewpoint)
                                        }
                                    }
                                }
                            }
                            
                            if !viewModel.folkloricPlaces.isEmpty {
                                Section("Folkloric Places") {
                                    ForEach(viewModel.folkloricPlaces) { folkloricPlace in
                                        NavigationLink {
                                            DetailView(location: folkloricPlace)
                                        } label: {
                                            FavoriteRowView(location: folkloricPlace)
                                        }
                                    }
                                }
                            }
                        }
                        .listStyle(.plain)
                        .navigationBarTitleDisplayMode(.inline)
                    .fontDesign(.rounded)
                }
            }
        }
        
    }
}

struct FavoriteRowView: View {
    let location: Location
    
    var body: some View {
        HStack {
            Image(location.coverImage)
                .resizable()
                .scaledToFill()
                .frame(width: 75, height: 75)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text(location.name)
                .font(.title2.bold())
        }
        //        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    FavoritesView()
        .environmentObject(FavoritesViewModel())
}
