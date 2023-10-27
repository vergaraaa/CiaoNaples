//
//  dailylifeView.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 18/10/23.
//

import SwiftUI

struct dailylifeView: View {
    @Namespace var animation
    @Environment(\.colorScheme) var colorScheme
    
    @State var showDetailPage = false
    @State var currentLocation: Location?
    
    @State var animateView: Bool = false
    @State var animateContent: Bool = false
    @State var scrollOffset: CGFloat = 0
    
    @StateObject var viewModel = DailyLifeViewModel()
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                Picker("", selection: $viewModel.picker) {
                    Text("Day").tag("Day")
                    
                    Text("Night").tag("Night")
                }
                .padding()
                .pickerStyle(.segmented)
                .opacity(showDetailPage ? 0 : 1)
                
                
                if(viewModel.picker == "Day") {
                    ForEach(viewModel.day) { day in
                        Button {
                            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                                currentLocation = day
                                showDetailPage = true
                            }
                        } label: {
                            LocationCardView(
                                location: day,
                                currentLocation: currentLocation,
                                showDetailPage: showDetailPage,
                                animateView: animateView,
                                animation: animation
                            )
                            .scaleEffect(currentLocation?.id == day.id && showDetailPage ? 1 : 0.93)
                        }
                        .buttonStyle(ScaledButtonStyle())
                        .opacity(showDetailPage ? (currentLocation?.id == day.id ? 1 : 0) : 1)
                    }
                }
                else {
                    ForEach(viewModel.night) { night in
                        Button {
                            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                                currentLocation = night
                                showDetailPage = true
                            }
                        } label: {
                            LocationCardView(
                                location: night,
                                currentLocation: currentLocation,
                                showDetailPage: showDetailPage,
                                animateView: animateView,
                                animation: animation
                            )
                            .scaleEffect(currentLocation?.id == night.id && showDetailPage ? 1 : 0.93)
                        }
                        .buttonStyle(ScaledButtonStyle())
                        .opacity(showDetailPage ? (currentLocation?.id == night.id ? 1 : 0) : 1)
                    }
                    
                }
            }
            .padding(.vertical)
        }
        .overlay {
            if let location = currentLocation, showDetailPage {
                DetailView(
                    location: location,
                    currentLocation: $currentLocation,
                    showDetailPage: $showDetailPage,
                    animateView: $animateView,
                    animateContent: $animateContent,
                    scrollOffset: $scrollOffset,
                    animation: animation
                )
                .ignoresSafeArea(.container, edges: .top)
            }
        }
        .background(alignment: .top) {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(colorScheme == .light ? .white : .black)
                .frame(height: animateView ? nil : 350, alignment: .top)
                .scaleEffect(animateView ? 1 : 0.93)
                .opacity(animateView ? 1 : 0)
                .ignoresSafeArea()
        }
    }
}



#Preview {
    dailylifeView()
}
