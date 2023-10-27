//
//  FolkloricPlacesView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 25/10/23.
//

import SwiftUI

struct FolkloricPlacesView: View {
    var viewModel = FolkloricPlacesViewModel()
    
    @Namespace var animation
    
    @State var showDetail = false
    @State var selectedLocation: Location?
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Folkloric Places")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fontDesign(.rounded)
                    
                    ForEach(viewModel.fokloricPlaces) { fokloricPlace in
//                        LocationCardView(location: fokloricPlace, animation: animation)
//                            .onTapGesture {
//                                withAnimation(.spring) {
//                                    selectedLocation = fokloricPlace
//                                    showDetail.toggle()
//                                }
//                            }
//                            .matchedGeometryEffect(id: fokloricPlace.id, in: animation, isSource: true)
//                            .padding(.bottom)
                    }
                }
            }
            
//            if showDetail {
//                if let location = selectedLocation {
//                    DetailView(
//                        showDetail: $showDetail,
//                        selectedLocation: $selectedLocation,
//                        location: location,
//                        animation: animation
//                    )
//                }
//            }
        }
        .animation(.spring, value: selectedLocation)
        .navigationBarBackButtonHidden(showDetail ? true : false)
    }
}

#Preview {
    FolkloricPlacesView()
}
