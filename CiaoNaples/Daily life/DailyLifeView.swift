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
    
    @Namespace var animation
    
    @State var selectedLocation: Location?
    @State var showDetail = false
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color(Category.dailyLife.color))
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(Category.dailyLife.color).withAlphaComponent(0.2)
        UIPageControl.appearance().backgroundStyle = .prominent
    }
    
    var body: some View {
        ZStack {
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
                                    .onTapGesture {
                                        withAnimation(.spring) {
                                            selectedLocation = day
                                            showDetail.toggle()
                                        }
                                    }
                                    .matchedGeometryEffect(id: day.id, in: animation)
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
                                    .onTapGesture {
                                        withAnimation(.spring) {
                                            selectedLocation = night
                                            showDetail.toggle()
                                        }
                                    }
                                    .matchedGeometryEffect(id: night.id, in: animation)
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                        .frame(height: tabViewHeight)
                    }
                }
                .padding(.vertical)
            }
            
            if showDetail {
                if let location = selectedLocation {
                    DetailView(
                        showDetail: $showDetail,
                        selectedLocation: $selectedLocation,
                        location: location,
                        animation: animation
                    )
                }
            }
        }
        .navigationBarBackButtonHidden(showDetail ? true : false)
    }
}



#Preview {
    dailylifeView()
}
