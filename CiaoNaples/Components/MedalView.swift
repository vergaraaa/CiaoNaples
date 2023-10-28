//
//  MedalView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 28/10/23.
//

import SwiftUI

struct MedalView: View {
    let text: String
    let image: String
    let color: Color
    
    var body: some View {
        HStack(spacing: 7) {
            Image(systemName: image)
                .frame(width: 30, height: 30)
                .background(color)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text(text)
                .fontDesign(.rounded)
        }
    }
}

#Preview {
    MedalView(text: "Top choice", image: "ticket", color: .yellow)
}
