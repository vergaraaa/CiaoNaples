//
//  LocationCardView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 20/10/23.
//

import SwiftUI

struct LocationCardView: View {
    let location: Location
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(location.coverImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 250)
                .cornerRadius(20)
            
            VStack(alignment: .trailing){
                Text(location.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
                    .padding()
                    .frame(width: 350, alignment: .leading)
            }
            .frame(width: 350)
            .background(
                Color.gray
                    .opacity(0.3)
                    .frame(width: 350)
                    .clipShape(.rect(
                            topLeadingRadius: 0,
                            bottomLeadingRadius: 20,
                            bottomTrailingRadius: 20,
                            topTrailingRadius: 0
                        )
                    )
                    .blur(radius: 1)
            )
        }
    }
}

#Preview {
    LocationCardView(location: Location.locations[0])
}
