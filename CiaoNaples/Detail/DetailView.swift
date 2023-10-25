//
//  DetailView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 25/10/23.
//

import SwiftUI

struct DetailView: View {
    @Binding var showDetail: Bool
    @Binding var selectedLocation: Location?
    
    let location: Location
    let animation: Namespace.ID
    
    var body: some View {
        VStack {
            Image(location.coverImage)
                .matchedGeometryEffect(id: location.id, in: animation)
            // change for X icon
                .onTapGesture {
                    selectedLocation = nil
                    withAnimation(.spring) {
                        showDetail.toggle()
                    }
                }
            
            Text(location.name)
            
            Spacer()
        }
        .background(Color(UIColor.systemBackground))
        .ignoresSafeArea(edges: .top)
        .statusBar(hidden: showDetail ? true : false)
    }
}

#Preview {
    let location = Location.locations[0]
    @Namespace var animation
    
    return DetailView(
        showDetail: .constant(true),
        selectedLocation: .constant(location),
        location: location,
        animation: animation
    )
}
