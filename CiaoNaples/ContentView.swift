//
//  ContentView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
                .tag(1)
        }
    }
}



#Preview {
    ContentView()
}
