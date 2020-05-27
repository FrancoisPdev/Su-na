//
//  ListConseilsSport.swift
//  Su-na
//
//  Created by Reyhan 2 on 26/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct ListConseilsSport: View {
    var body: some View {
        VStack {
            
            //            struct ConseilOne {
            
            VStack {
                
                HStack {
                    
                    NavigationLink(destination: Text("")) {
                        VStack(alignment: .leading) {
                            Image("imgapple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                            
                        }
                            
                        .padding(.leading, -20)
                        
                        VStack {
                            Text("Conseil 5 :")
                                .font(.body)
                                .underline()
                            Text("N'oubliez pas de vous")
                                .font(. body)
                            Text("alimenter avant d'aller")
                            Text("faire du sport")
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
                        
                        Image("imgabdos")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60)
                        
                    }
                        
                    .padding(.leading, -20)
                    
                    VStack {
                        Text("Conseil 6 :")
                            .font(.body)
                            .underline()
                        Text("Un petit exercice pour")
                            .font(.body)
                        Text("les abdos, ça vous dit ?")
                        Text("Go !")
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


struct ListConseilsSport_Previews: PreviewProvider {
    static var previews: some View {
        ListConseilsSport()
    }
}
