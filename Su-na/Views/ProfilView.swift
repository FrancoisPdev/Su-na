//
//  ProfilView.swift
//  Su-na
//
//  Created by Schmidt Samuelk on 13/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct ProfilView: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("Monsieur X")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom)
                    
                    
                    
                    
                    
                }
                Spacer()
                
                VStack(alignment: .leading)
                {
                    HStack {
                            Text("PROGRESSION")
                                .foregroundColor(.gray)
                                .frame( maxWidth: .infinity, alignment: .topLeading)
                                .padding(.leading)
                        
                        }
                        
            
                    Spacer()
                    
                }
                
                
                VStack(alignment: .center){
                    
                    Text("Vous avez atteins 80% de vos objectifs hebdomadaire !")
                    Spacer()
                    
                    
                }
                
                VStack(alignment: .leading)
                {
                    HStack {
                        Text("HISTORIQUE DES LIVES")
                            Spacer()
                            .foregroundColor(.gray)
                            .padding()
                    }
                    
                    
                    
                }
                
                HStack {
                    ScrollView(.horizontal){
                        
                        HStack {
                            
                            HistoryLive(imageHistory: "yoga2", textHistory: "Yoga")
                            HistoryLive(imageHistory: "yoga2", textHistory: "Cuisine")
                            HistoryLive(imageHistory: "yoga2", textHistory: "Sport")
                            
                        }.padding()
                        
                        
                        
                        
                        
                        
                    }
                    
                }
                
            }.navigationBarTitle("Profil")
            
        }
        
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
