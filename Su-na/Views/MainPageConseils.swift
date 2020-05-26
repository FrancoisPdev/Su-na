//
//  ContentView.swift
//  Page conseils
//
//  Created by Reyhan 2 on 13/05/2020.
//  Copyright © 2020 Mikail. All rights reserved.
//

import SwiftUI

struct MainPageConseils: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    VStack {
                        
                        Text("Conseil du jour")
                            .font(.largeTitle)
                            .padding(.top, 20)
                        
                        VStack {
                            
                            NavigationLink(destination: DetailRespirationViewConseils()) {
                                Image("imgbreath")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.top, 10)
                                
                                Text("Exercice de respiration")
                                    .font(.headline)
                                    .padding(.bottom, 10)
                            }.buttonStyle(PlainButtonStyle())
                            
                            
                        }
                        .frame(width: 350, height: 200)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.blue, lineWidth: 6)
                            //                                .frame(width: 350, height: 200)
                        )
                            //                            .border(Color.gray, width: 3)
                            //                            .cornerRadius(20)
                            .shadow(radius: 20)
                        
                    }
                        
                    .padding(.bottom, 40)
                    
                    VStack {
                        
                            ListConseilsAlimentation()
                        Text("")
                        
                    }
                }
            }
            .navigationBarTitle("Conseils")
                
            .navigationBarItems(trailing:
                NavigationLink(destination: FiltresViewConseils()){
                    Text("Filtres")
                    
            })
                
                
                .navigationBarItems(trailing:
                    
                    Button("Filtres")
                    {
                        print("")}
                        .padding(.top, 90))
            
        }
    }
}

struct MainPageConseils_Previews: PreviewProvider {
    static var previews: some View {
        MainPageConseils()
    }
}
