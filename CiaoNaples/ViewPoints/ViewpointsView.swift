//
//  viewpointsView.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 18/10/23.
//

import SwiftUI

struct ViewpointsView: View {
    @Namespace var animation
    @Environment(\.colorScheme) var colorScheme
    
    @State var showDetailPage = false
    @State var currentLocation: Location?
    
    @State var animateView: Bool = false
    @State var animateContent: Bool = false
    @State var scrollOffset: CGFloat = 0
    
    var viewModel = ViewpointsViewModel()
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                ForEach(viewModel.viewpoints) { viewpoint in
                    NavigationLink {
                        DetailView(location: viewpoint)
                    } label: {
                        LocationCardView(location: viewpoint)
                    }
                }
            }
            .padding(.vertical)
        }
    }
}


#Preview {
    ViewpointsView()
}


// possiamo mettere tutto direttamente in questa schermata penso
