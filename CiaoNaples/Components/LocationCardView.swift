//
//  LocationCardView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 20/10/23.
//

import SwiftUI

struct LocationCardView: View {
    let location: Location
    var isFromDetail: Bool = false
    
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
                
                if !isFromDetail {
                    LinearGradient(colors: [
                        .clear,
                        .black.opacity(0.25),
                        .black.opacity(0.5)
                    ], startPoint: .top, endPoint: .bottom)
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text(location.name)
                            .font(.largeTitle.bold())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .multilineTextAlignment(.leading)
                    })
                    .foregroundStyle(.white)
                    .padding()
                }
            }
        }
        .overlay(alignment: .topTrailing) {
            if !isFromDetail {
                FavoritesToggler(location: location)
                    .padding()
            }
        }
        .clipShape(
            RoundedRectangle(cornerRadius: isFromDetail ? 0 : 25)
        )
    }
}

#Preview {
    LocationCardView(location: Location.locations[0])
        .environmentObject(FavoritesViewModel.shared)
}
