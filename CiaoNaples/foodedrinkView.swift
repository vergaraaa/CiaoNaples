//
//  foodedrinkView.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 18/10/23.
//

import SwiftUI

struct foodedrinkView: View {
    
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
                
                
                ScrollView{
                    
                    HStack{
                        
                        ForEach (foodModel.restaurants){ Food in
                            ZStack(alignment: .bottomLeading){
                                Image(Food.imageR)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 250)
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
            }
        }
        
    }
}


#Preview {
    foodedrinkView()
}
