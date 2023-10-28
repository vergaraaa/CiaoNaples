//
//  DetailView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 25/10/23.
//

import SwiftUI

struct DetailView: View {
    let location: Location
    
    @EnvironmentObject var favoritesViewModel : FavoritesViewModel
    
    var isFavorite: Bool {
        for favorite in favoritesViewModel.favorites {
            if favorite.id == location.id {
                return true
            }
        }
        
        return false
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                VStack {
                    LocationCardView(location: location)
                    
                    VStack(spacing: 15) {
                        Button {
                            if isFavorite {
                                favoritesViewModel.removeFavorite(location: location)
                            }
                            else {
                                favoritesViewModel.addFavorite(location: location)
                            }
                        } label: {
                            Label(
                                title: { Text(isFavorite ? "Delete": "Save") },
                                icon: { Image(systemName: isFavorite ? "heart.fill" : "heart") }
                            )
                        }
                        
                        
                        Text(dummyText)
                            .multilineTextAlignment(.leading)
                            .lineSpacing(10)
                            .padding(.bottom, 20)
                        
                        Divider()
                        
                        Button {
                            
                        } label: {
                            Label(
                                title: { Text("Share Story") },
                                icon: { Image(systemName: "square.and.arrow.up.fill") }
                            )
                            .foregroundStyle(.primary)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 25)
                            .background {
                                RoundedRectangle(cornerRadius: 5, style: .continuous)
                                    .fill(.ultraThinMaterial)
                            }
                        }
                    }
                }
            }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

#Preview {
    DetailView(location: Location.locations[0])
}

var dummyText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
