//
//  NennellaView.swift
//  CiaoNaples
//
//  Created by maria gabriella sica on 24/10/23.
//

import SwiftUI

struct FoodDetailedView: View {
        
    var food: Location
    
    var body: some View {
        
        ZStack{
            
            Color.teal
                .ignoresSafeArea()
                .opacity(0.2)
            VStack{

                ScrollView(.horizontal){
                    HStack{
                        ForEach(food.images, id: \.self){ image in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 350, height: 450)
                                .cornerRadius(20)
                        }
                    }
                }.padding([.top, .leading, .bottom])
                    
                    Text(food.name)
                        .font(.title)
                    Text(food.description)
                        .font(.caption)
                    
            }
        }
    }
}

#Preview {
    FoodDetailedView(food: FoodAndDrinksViewModel().food[0])

}
