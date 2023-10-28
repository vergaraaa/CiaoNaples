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
            ScrollView(showsIndicators: false) {
                ForEach(viewModel.favorites) { favorite in
                    NavigationLink {
                        DetailView(location: favorite)
                    } label: {
                        LocationCardView(location: favorite)
                            .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    FavoritesView()
        .environmentObject(FavoritesViewModel())
}
