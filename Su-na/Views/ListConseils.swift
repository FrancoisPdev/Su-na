//
//  ListConseils.swift
//  Su-na
//
//  Created by Reyhan 2 on 26/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct ListConseils: View {
    var body: some View {
        
        
        //        VStack {
        //
        //            struct ConseilOne {
        //
        //                var Conseil1 {
        //                    VStack {
        
        VStack {
            
            struct ConseilOne (
            
            VStack {
                
                HStack {
                    
                    NavigationLink(destination: DetailBreadViewConseils()) {
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
                                .font(. body)
                            Text("meilleur pour la santé ")
                            Text("que celui en magasin !")
                            Text("Fais ton propre pain !")
                        }
                    }.buttonStyle(PlainButtonStyle())
                }
                .frame(width: 320, height: 130)
                .border(Color.gray, width: 3)
                .cornerRadius(20)
                .shadow(radius: 20)
                    
                .padding(.bottom, 25)
                
            )
            }
            
            VStack {
                
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
                //        }
                //    }
                //}
            }
        }
    }
}

struct ListConseils_Previews: PreviewProvider {
    static var previews: some View {
        ListConseils()
    }
}
