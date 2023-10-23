//
//  viewpointsView.swift
//  ciaoNaples
//
//  Created by maria gabriella sica on 18/10/23.
//

import SwiftUI

struct viewpointsView: View {
    
    var viewpointsModel = ViewpointsClass()
    
    var body: some View {
        
        ZStack{
            Color.teal
                .ignoresSafeArea()
                .opacity(0.2)
            
            VStack{
                
                ScrollView{
                    
                    VStack{
                        ForEach(viewpointsModel.viewpoints){ viewpoint in
                            ZStack(alignment: .bottomLeading){
                                Image(viewpoint.imagesV)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 350, height: 450)
                                    .cornerRadius(20)
                                
                                Color.black
                                    .opacity(0.3)
                                    .cornerRadius(20)
                                
                                VStack(alignment: .leading){
                                    Text(viewpoint.nameV)
                                        .font(.largeTitle)
                                            .bold()
                                    Text(viewpoint.zoneV)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .bold()
                                        .italic()
                                    Text(viewpoint.descriptionN)
                                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                                        .italic()
                                } .padding()
                            }
                        }
                    }
                }.padding()
            }
        }
    }
}

#Preview {
    viewpointsView()
}


// possiamo mettere tutto direttamente in questa schermata penso
