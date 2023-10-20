//
//  foodedrinkView.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 18/10/23.
//

import SwiftUI

struct foodedrinkView: View {
    
    var drinkModel = drinkclass()
    var foodModel = foodClass()
    
    var body: some View {
        
        ZStack{
            Color.teal
                .ignoresSafeArea()
                .opacity(0.2)
            
            VStack{
                Text("Food")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.561, saturation: 0.928, brightness: 0.428))
                
                ScrollView(.horizontal) {
                    
                    HStack{
                        
                        ForEach (foodModel.restaurants){ Food in
                            ZStack(alignment: .bottomLeading){
                                Image(Food.coverImageR)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 350, height: 250)
                                    .cornerRadius(20)
                                
                                Color.black
                                    .opacity(0.3)
                                    .cornerRadius(20)
                                
                                VStack(alignment: .leading){
                                    Text(Food.nameR)
                                        .font(.largeTitle)
                                        .bold()
                                        .padding()
                                }
                            }
                        }
                    }
                }
                
                
                Text("Drink")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.561, saturation: 0.928, brightness: 0.428))
                
                ScrollView(.horizontal) {
                    
                    HStack{
                        
                        ForEach (drinkModel.bars){ Drink in
                            ZStack(alignment: .bottomLeading){
                                Image(Drink.coverImageB)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 350, height: 250)
                                    .cornerRadius(20)
                                
                                Color.black
                                    .opacity(0.3)
                                    .cornerRadius(20)
                                
                                VStack(alignment: .leading){
                                    Text(Drink.nameB)
                                        .font(.largeTitle)
                                        .bold()
                                        .padding()
                                }
                            }
                        }
                    }
                }
            }
        }
        
    }
}


#Preview {
    foodedrinkView()
}
