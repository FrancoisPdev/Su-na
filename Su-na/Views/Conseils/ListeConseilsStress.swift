//
//  ListeConseilsStress.swift
//  Su-na
//
//  Created by Reyhan 2 on 26/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct ListeConseilsStress: View {
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
                    
                    NavigationLink(destination: Text("")) {
                        VStack(alignment: .leading) {
                            Image("")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                            
                        }
                            
                        .padding(.leading, -20)
                        
                        VStack {
                            Text("Conseil 1 :")
                                .font(.body)
                                .underline()
                            Text("")
                                .font(. body)
                            Text("")
                            Text("")
                            Text("")
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
                        
                        Image("")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                        
                    }
                        
                    .padding(.leading, -20)
                    
                    VStack {
                        Text("Conseil 2 :")
                            .font(.body)
                            .underline()
                        Text("")
                            .font(.body)
                        Text("")
                        Text("")
                        Text("")
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


struct ListeConseilsStress_Previews: PreviewProvider {
    static var previews: some View {
        ListeConseilsStress()
    }
}
