//
//  viewpointsView.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 18/10/23.
//

import SwiftUI

struct ViewpointsView: View {
    var viewModel = ViewpointsViewModel()
    
    @Namespace var animation
    
    @State var showDetail = false
    @State var selectedLocation: Location?
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Food")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .fontDesign(.rounded)
                    
                    ForEach(viewModel.viewpoints) { viewpoint in
//                        LocationCardView(location: viewpoint, animation: animation)
//                            .onTapGesture {
//                                withAnimation(.spring) {
//                                    selectedLocation = viewpoint
//                                    showDetail.toggle()
//                                }
//                            }
//                            .matchedGeometryEffect(id: viewpoint.id, in: animation, isSource: true)
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
    ViewpointsView()
}


// possiamo mettere tutto direttamente in questa schermata penso
