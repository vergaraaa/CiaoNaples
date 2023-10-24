//
//  CategoryView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 19/10/23.
//

import SwiftUI



struct CategoryView: View {
    let category: HomeCategory
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: category.image)
            
            Text(category.name)
                .fontDesign(.rounded)
                .multilineTextAlignment(.center)
        }
        .frame(width: 150, height: 150)
        .background(category.color)
        .clipShape(RoundedRectangle(cornerRadius: 40))
        .foregroundStyle(.white)
        .fontWeight(.semibold)
        .shadow(radius: 5)
    }
}

#Preview {
    CategoryView(category: HomeCategory.foodAndDrinks)
}
