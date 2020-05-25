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
                            
                            NavigationLink(destination: DetailRespirationView()) {
                                Image("imgbreath")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.top, 10)
                                
                                Text("Exercice de respiration")
                                    .font(.headline)
                                    .padding(.bottom, 10)
                            }.buttonStyle(PlainButtonStyle())
                            
                            
                        } .frame(width: 350, height: 200)
                            .border(Color.gray, width: 3)
                            .cornerRadius(20)
                            .shadow(radius: 20)
                    }
                        
                    .padding(.bottom, 40)
                    
                    
                    
                    HStack {
                        
                        
                        NavigationLink(destination: DetailBreadView()) {
                            
                            VStack(alignment: .leading) {
                                Image("imgbreaddd")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100)
                                
                            }
                                
                                
                            .padding(.leading, -20)
                            
                            VStack {
                                Text("Conseil 1 :")
                                    .font(.body)
                                    .underline()
                                Text("Le pain maison est ")
                                    .font(.body)
                                Text("meilleur pour la santé ")
                                Text("que celui en magasin !")
                                Text("Fais ton propre pain !")
                            }
                        }.buttonStyle(PlainButtonStyle())
                    }.frame(width: 320, height: 130)
                        .border(Color.gray, width: 3)
                        .cornerRadius(20)
                        .shadow(radius: 20)
                        
                        .padding(.bottom, 25)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            
                            Image("imgbreaddd")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                            
                        }
                            
                        .padding(.leading, -20)
                        
                        VStack {
                            Text("Conseil 2 :")
                                .font(.body)
                                .underline()
                            Text("Le pain maison est ")
                                .font(.body)
                            Text("meilleur pour la santé ")
                            Text("que celui en magasin !")
                            Text("Fais ton propre pain !")
                        }
                        
                    }.frame(width: 320, height: 130)
                        .border(Color.gray, width: 3)
                        .cornerRadius(20)
                        .shadow(radius: 20)
                    
                }
            }
            .navigationBarTitle("Conseils")
                
            .navigationBarItems(trailing:
                NavigationLink(destination: FiltresViewConseils()){
                    Text("Filtres")
                    
            })
            
            //
            //            .navigationBarItems(trailing:
            //
            //                Button("Filtres")
            //                {
            //                    print("")}
            //                    .padding(.top, 90))
            
        }
    }
}

struct MainPageConseils_Previews: PreviewProvider {
    static var previews: some View {
        MainPageConseils()
    }
}
