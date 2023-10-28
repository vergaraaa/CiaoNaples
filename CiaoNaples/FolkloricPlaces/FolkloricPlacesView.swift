//
//  FolkloricPlacesView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 25/10/23.
//

import SwiftUI

struct FolkloricPlacesView: View {

    var viewModel = FolkloricPlacesViewModel()

    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                ForEach(viewModel.folkloricPlaces) { folkloricPlace in
                    NavigationLink {
                        DetailView(location: folkloricPlace)
                    } label: {
                        LocationCardView(location: folkloricPlace)
                            .padding()
                    }
                }
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    FolkloricPlacesView()
}
