//
//  dailylifeView.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 18/10/23.
//

import SwiftUI

struct dailylifeView: View {
    
    var dailyModel = dailyClass()
    
    var nightModel = nightClass()
    
    var body: some View {
        
        ZStack{
            Color.teal
                .ignoresSafeArea()
                .opacity(0.3)
            
            VStack{
                Text("Day")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.561, saturation: 0.928, brightness: 0.428))
                
                ScrollView(.horizontal){
                    
                    HStack{
                        
                        ForEach(nightModel.night) { Nightlife in
                            ZStack(alignment: .bottomLeading){
                                Image(Nightlife.imageN)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 350, height: 250)
                                    .cornerRadius(20)
                                
                                Color.black
                                    .opacity(0.3)
                                    .cornerRadius(20)
                                
                                VStack{
                                    Text(Nightlife.nameN)
                                        .font(.largeTitle)
                                        .bold()
                                        .padding()
                                }
                            }
                        }
                    }
                    
                    
                }.padding()
                
                Text("Night")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.561, saturation: 0.928, brightness: 0.428))
                
                ScrollView(.horizontal){
                    
                    HStack{
                        
                        ForEach(dailyModel.daily) { places in
                            ZStack(alignment: .bottomLeading){
                                Image(places.imageD)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 350, height: 250)
                                    .cornerRadius(20)
                                
                                Color.black
                                    .opacity(0.3)
                                    .cornerRadius(20)
                                
                                VStack{
                                    Text(places.nameD)
                                        .font(.largeTitle)
                                        .bold()
                                        .padding()
                                }
                            }
                        }
                    }
                }.padding()
            }
        }
    }
}

#Preview {
    dailylifeView()
}
