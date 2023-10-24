//
//  dailylifeView.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 18/10/23.
//

import SwiftUI

struct dailylifeView: View {
    let tabViewHeight = 350.0
    
    var viewModel = DailyLifeViewModel()
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color(Category.dailyLife.color))
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(Category.dailyLife.color).withAlphaComponent(0.2)
        UIPageControl.appearance().backgroundStyle = .prominent
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading, spacing: -40) {
                    Text("Day")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fontDesign(.rounded)
                        .padding(.horizontal)
                    
                    TabView {
                        ForEach(viewModel.day){ day in
                            LocationCardView(location: day)
                        }
                    }
                    .tabViewStyle(.page)
                    .frame(height: tabViewHeight)
                }
                
                VStack(alignment: .leading, spacing: -40) {
                    Text("Night")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fontDesign(.rounded)
                        .padding(.horizontal)
                    
                    TabView {
                        ForEach(viewModel.night){ night in
                            LocationCardView(location: night)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: tabViewHeight)
                }
            }
            .padding(.vertical)
        }
    }
}



#Preview {
    dailylifeView()
}
