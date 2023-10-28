//
//  dailylifeView.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 18/10/23.
//

import SwiftUI

struct DailyLifeView: View {
    @StateObject var viewModel = DailyLifeViewModel()
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                Picker("", selection: $viewModel.picker) {
                    Text("Day").tag("Day")
                    
                    Text("Night").tag("Night")
                }
                .padding()
                .pickerStyle(.segmented)
                
                
                if(viewModel.picker == "Day") {
                    ForEach(viewModel.day) { day in
                        NavigationLink {
                            DetailView(location: day)
                        } label: {
                            LocationCardView(location: day)
                                .padding()
                        }
                    }
                }
                else {
                    ForEach(viewModel.night) { nigth in
                        NavigationLink {
                            DetailView(location: nigth)
                        } label: {
                            LocationCardView(location: nigth)
                                .padding()
                        }
                    }
                    
                }
            }
            .padding(.vertical)
        }
    }
}



#Preview {
    DailyLifeView()
}
