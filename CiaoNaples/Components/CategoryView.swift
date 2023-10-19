//
//  CategoryView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 19/10/23.
//

import SwiftUI

struct CategoryView: View {
    let category: Category
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.teal)
                .frame(width: 90, height: 90, alignment: .center)
                .shadow(color: .teal, radius: 10)
            
            VStack{
                Image(systemName: category.image)
                    .foregroundColor(.white)
                    .padding(.bottom, 5)
                
                Text(category.displayName)
                    .foregroundColor(.white)
                    .font(.caption)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

#Preview {
    CategoryView(category: .foodAndDrinks)
}
