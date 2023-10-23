//
//  eventsView.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 23/10/23.
//

import SwiftUI

struct eventsView: View {
    
    var eventsModel = eventsClass()
    
    var body: some View {
        
        ZStack{
            Color.teal
                .ignoresSafeArea()
                .opacity(0.2)
            
            
            VStack(alignment: .leading, spacing: 40) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Events")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.561, saturation: 0.928, brightness: 0.428))
                        .padding([.top, .leading, .trailing])
                    
                    ScrollView{
                        
                        ForEach (eventsModel.events){
                            event in
                            ZStack(alignment: .bottomLeading){
                                Image(event.imageE)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 350, height: 450)
                                    .cornerRadius(20)
                                
                                Color.black
                                    .opacity(0.3)
                                    .cornerRadius(20)
                                
                                VStack(alignment: .leading){
                                    Text(event.nameE)
                                        .font(.largeTitle)
                                        .bold()
                                    
                                    Text(event.zoneE)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .bold()
                                        .italic()
                                    Text(event.shortdescriptionE)
                                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                                        .italic()
                                }.padding()
                            }
                        }
                    }.padding()
                }
            }
        }
    }
}

#Preview {
    eventsView()
}


#Preview {
    eventsView()
}
