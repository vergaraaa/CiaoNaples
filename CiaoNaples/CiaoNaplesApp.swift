//
//  CiaoNaplesApp.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 17/10/23.
//

import SwiftUI

@main
struct CiaoNaplesApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                
                //   favoriteViews()
                // .tabItem {
                //   Image(systemName: "star")
                
                //   Text("favorites places")
            }
        }
    }
}
