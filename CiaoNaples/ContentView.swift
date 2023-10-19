//
//  ContentView.swift
//  CiaoNaples
//
//  Created by Edgar Ernesto Vergara Montiel on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.teal
                    .ignoresSafeArea()
                    .opacity(0.2)
                
                VStack{
                    
                    Text("What to do today?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 50.0)
                        .foregroundColor(Color(hue: 0.561, saturation: 0.928, brightness: 0.428))
                    
                 //   NavigationLink(destination: foodedrinkView()){
                        ZStack{
                            Circle()
                                .foregroundColor(.teal)
                                .frame(width: 90, height: 90, alignment: .center)
                                .shadow(color: .teal, radius: 10)
                            
                            VStack{
                                Image(systemName: "fork.knife")
                                    .foregroundColor(.white)
                                    .padding(.bottom, 4.0)
                                Text("food")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                Text("&")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                Text("drinks")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        }
                 //  }
                    
                    HStack{
                        
                        VStack{
                        //    NavigationLink (destination: folkloricplacesView()){
                                ZStack{
                                    Circle()
                                        .foregroundColor(.teal)
                                        .frame(width: 90, height: 90, alignment: .center)
                                        .shadow(color: .teal, radius: 10)
                                        .padding(.bottom, 50.0)
                                    
                                    VStack{
                                        Image(systemName: "theatermasks")
                                            .foregroundColor(.white)
                                            .padding(.bottom, 4.0)
                                        Text("folkloric")
                                            .foregroundColor(.white)
                                            .font(.caption)
                                        Text("places")
                                            .foregroundColor(.white)
                                            .font(.caption)
                                    }.padding(.bottom, 45.0)
                                }
                          //  }
                            
                           // NavigationLink (destination: viewpointsView()){
                                ZStack{
                                    Circle()
                                        .foregroundColor(.teal)
                                        .frame(width: 90, height: 90, alignment: .center)
                                        .shadow(color: .teal, radius: 10)
                                    
                                    VStack{
                                        Image(systemName: "binoculars")
                                            .foregroundColor(.white)
                                            .padding(.bottom, 4.0)
                                        Text("viewpoints")
                                            .foregroundColor(.white)
                                            .font(.caption)
                                    }
                                }
                           // }
                        }
                        
                        Image("FirstView")
                            .resizable()
                            .frame(width: 190, height: 190, alignment: .center)
                        
                        VStack{
                           // NavigationLink (destination: dailylifeView()){
                                ZStack{
                                    Circle()
                                        .foregroundColor(.teal)
                                        .frame(width: 90, height: 90, alignment: .center)
                                        .shadow(color: .teal, radius: 10)
                                        .padding(.bottom, 50.0)
                                    
                                    VStack{
                                        Image(systemName: "sun.haze")
                                            .foregroundColor(.white)
                                            .padding(.bottom, 4.0)
                                        Text("daily life")
                                            .foregroundColor(.white)
                                            .font(.caption)
                                    }.padding(.bottom, 45.0)
                                }
                          //  }
                            
                           // NavigationLink (destination: museumsView()){
                                ZStack{
                                    Circle()
                                        .foregroundColor(.teal)
                                        .frame(width: 90, height: 90, alignment: .center)
                                        .shadow(color: .teal, radius: 10)
                                    
                                    VStack{
                                        Image(systemName: "building.columns")
                                            .foregroundColor(.white)
                                            .padding(.bottom, 4.0)
                                        Text("museums")
                                            .foregroundColor(.white)
                                            .font(.caption)
                                    }
                                }
                            //}
                        }
                    }
                    
                   // NavigationLink (destination: gardensView()){
                        ZStack{
                            Circle()
                                .foregroundColor(.teal)
                                .frame(width: 90, height: 90, alignment: .center)
                                .shadow(color: .teal, radius: 10)
                            
                            VStack{
                                Image(systemName: "leaf")
                                    .foregroundColor(.white)
                                    .padding(.bottom, 4.0)
                                Text("gardens")
                                    .foregroundColor(.white)
                                    .font(.caption)
                           // }
                        }
                    }
                    
                }
                .foregroundColor(Color(hue: 0.561, saturation: 0.928, brightness: 0.428))
                
            } //.navigationTitle("Home")
        }
    }
}



#Preview {
    ContentView()
}
