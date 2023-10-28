//
//  FavoritesToggler.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 28/10/23.
//

import SwiftUI

struct FavoritesToggler: View {
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
        Button {
            if isFavorite {
                favoritesViewModel.removeFavorite(location: location)
            }
            else {
                favoritesViewModel.addFavorite(location: location)
            }
        } label: {
            Image(systemName: isFavorite ? "heart.fill" : "heart")
                .foregroundStyle(Category(rawValue: location.category)?.color ?? .primary)
                .font(.title3)
                .frame(width: 50, height: 50)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .gray, radius: 5)
        }
    }
}

#Preview {
    FavoritesToggler(location: Location.locations[0])
        .environmentObject(FavoritesViewModel())
}
