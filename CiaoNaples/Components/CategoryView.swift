//
//  CategoryView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 19/10/23.
//

import SwiftUI



struct CategoryView: View {
    let title: String
    let image: String
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.teal)
                .frame(width: 90, height: 90, alignment: .center)
                .shadow(color: .teal, radius: 10)
            
            VStack{
                Image(systemName: image)
                    .foregroundColor(.white)
                    .padding(.bottom, 5)
                
                Text(title)
                    .foregroundColor(.white)
                    .font(.caption)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

#Preview {
    CategoryView(title: "Gardens", image: "leaf")
}
