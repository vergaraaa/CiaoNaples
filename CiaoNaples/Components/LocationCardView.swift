//
//  LocationCardView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 20/10/23.
//

import SwiftUI

struct LocationCardView: View {
    let location: Location
    
    let currentLocation: Location?
    let showDetailPage: Bool
    let animateView: Bool
    
    let animation: Namespace.ID
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            ZStack(alignment: .bottom) {
                GeometryReader { proxy in
                    let size = proxy.size
                    
                    Image(location.coverImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: size.width, height: size.height)
                        
                }
                .frame(height: 400)
                
                LinearGradient(colors: [
                    .clear,
                    .black.opacity(0.2),
                    .black.opacity(0.5)
                ], startPoint: .top, endPoint: .bottom)
                
                VStack(alignment: .leading, spacing: 8, content: {
                    Text(location.name)
                        .font(.largeTitle.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                })
                .foregroundStyle(.white)
                .padding()
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .matchedGeometryEffect(id: location.id, in: animation, anchor: .leading)
    }
}

#Preview {
    @Namespace var animation
    
    return LocationCardView(
        location: Location.locations[0],
        currentLocation: Location.locations[0],
        showDetailPage: false,
        animateView: false,
        animation: animation
    )
}
