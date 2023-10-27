//
//  FolkloricPlacesView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 25/10/23.
//

import SwiftUI

struct FolkloricPlacesView: View {
    @Namespace var animation
    @Environment(\.colorScheme) var colorScheme
    
    @State var showDetailPage = false
    @State var currentLocation: Location?
    
    @State var animateView: Bool = false
    @State var animateContent: Bool = false
    @State var scrollOffset: CGFloat = 0

    var viewModel = FolkloricPlacesViewModel()

    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                ForEach(viewModel.folkloricPlaces) { folkloricPlace in
                    Button {
                        withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                            currentLocation = folkloricPlace
                            showDetailPage = true
                        }
                    } label: {
                        LocationCardView(
                            location: folkloricPlace,
                            currentLocation: currentLocation,
                            showDetailPage: showDetailPage,
                            animateView: animateView,
                            animation: animation
                        )
                        .scaleEffect(currentLocation?.id == folkloricPlace.id && showDetailPage ? 1 : 0.93)
                    }
                    .buttonStyle(ScaledButtonStyle())
                    .opacity(showDetailPage ? (currentLocation?.id == folkloricPlace.id ? 1 : 0) : 1)
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
    FolkloricPlacesView()
}
