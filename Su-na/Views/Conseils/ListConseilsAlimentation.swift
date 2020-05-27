//
//  ListConseilsAlimentation.swift
//  Su-na
//
//  Created by Reyhan 2 on 26/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

//
//  ListConseils.swift
//  Su-na
//
//  Created by Reyhan 2 on 26/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct ListConseilsAlimentation: View {
    var body: some View {
        
        
        //        VStack {
        //
        //            struct ConseilOne {
        //
        //                var Conseil1 {
        //                    VStack {
        
        VStack {
            
            //            struct ConseilOne {
            
            VStack {
                
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
                                .font(. body)
                            Text("meilleur pour la santé ")
                            Text("que celui en magasin !")
                            Text("Fais ton propre pain !")
                        }
                    }.buttonStyle(PlainButtonStyle())
                }
                .frame(width: 320, height: 130)
                    
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.blue, lineWidth: 6))
                    
                    .shadow(radius: 20)
                    
                    .padding(.bottom, 25)
                
            }
            VStack {
                
                HStack {
                    VStack(alignment: .leading) {
                        
                        Image("imggras")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                        
                    }
                        
                    .padding(.leading, -20)
                    
                    VStack {
                        Text("Conseil 2 :")
                            .font(.body)
                            .underline()
                        Text("Choisis les bons gras !")
                            .font(.body)
                        Text("Le gras est important,")
                        Text("mais attention aux")
                        Text("types de gras.")
                    }
                    
                }.frame(width: 320, height: 130)
                    
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.blue, lineWidth: 6))
                    
                    .shadow(radius: 20)
            }
        }
    }
}
//}

struct ListConseils_Previews: PreviewProvider {
    static var previews: some View {
        ListConseilsAlimentation()
    }
}
