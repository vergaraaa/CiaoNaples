//
//  DetailView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 25/10/23.
//

import MapKit
import SwiftUI

struct DetailView: View {
    let location: Location
    
    var isFavorite: Bool {
        for favorite in favoritesViewModel.favorites {
            if favorite.id == location.id {
                return true
            }
        }
        
        return false
    }
    
    var categoryColor: Color {
        return Category(rawValue: location.category)?.color ?? .accentColor
    }
    
    let columns = [
        GridItem(.adaptive(minimum: 150)),
        GridItem(.adaptive(minimum: 150)),
    ]
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
    }
    
    @EnvironmentObject var favoritesViewModel : FavoritesViewModel
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                ZStack(alignment: .bottomTrailing) {
                    TabView {
                        LocationCardView(location: location, isFromDetail: true)
                        
                        ForEach(location.images, id: \.self) { image in
                            GeometryReader { proxy in
                                let size = proxy.size
                                Image(image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: size.width, height: size.height)
                                    .clipShape(
                                        .rect(
                                            topLeadingRadius: 0,
                                            bottomLeadingRadius: 25,
                                            bottomTrailingRadius: 25,
                                            topTrailingRadius: 0
                                        )
                                    )
                            }
                        }
                        .frame(height: 400)
                        
                        
                    }
                    .tabViewStyle(.page)
                    .frame(height: 400, alignment: .top)
                    .padding(.bottom, 23)
                    
                    FavoritesToggler(location: location)
                        .padding(.horizontal)
                }
                
                VStack(alignment: .leading, spacing: 30) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(location.name)
                            .font(.largeTitle.bold())
                        
                        LazyVGrid(columns: columns, alignment: .leading, spacing: 20) {
                            MedalView(
                                text: location.topChoice ? "Top choice" : "Good choice",
                                image: location.topChoice ? "star" : "hand.thumbsup",
                                color: location.topChoice ? .yellow : categoryColor
                            )
                            
                            MedalView(
                                text: "Cheap choice",
                                image: "dollarsign",
                                color: location.cheapChoice ? categoryColor : .gray
                            )
                            
                            MedalView(
                                text: "Public transport",
                                image: "bus",
                                color: location.cheapChoice ? categoryColor : .gray
                            )
                            
                            if let ticketNeeded = location.ticketNeeded {
                                MedalView(
                                    text: "Ticket needed",
                                    image: "ticket",
                                    color: ticketNeeded ? categoryColor : .gray
                                )
                            }
                        }
                        .padding()
                        .background(Color(UIColor.systemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(color: .gray, radius: 3)
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Description")
                            .font(.title.bold())
                        
                        
                        Text(location.locDescription)
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Recommendations")
                            .font(.title.bold())
                        
                        ForEach(location.recommendations, id: \.self) { recommendation in
                            Text("👉 \(recommendation)")
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .fontDesign(.rounded)
                
                Map {
                    Marker(location.name, coordinate: coordinate)
                        .tint(categoryColor)
                }
                .padding(.top, 30)
                .frame(height: 500)
            }
            
        }
//        .ignoresSafeArea(edges: .top)
//        .navigationBarBackButtonHidden(true)
//        .gesture(DragGesture().updating($dragOffset, body: { (value, state, transaction) in
//            if(value.startLocation.x < 20 && value.translation.width > 100) {
//                self.mode.wrappedValue.dismiss()
//            }
//        }))
    }
}

#Preview {
    DetailView(location: Location.locations[0])
        .environmentObject(FavoritesViewModel.shared)
}
