//
//  ContentView.swift
//  IIez
//
//  Created by Reyhan 2 on 20/05/2020.
//  Copyright © 2020 Mikail. All rights reserved.
//

import SwiftUI

struct MainPageObjectifs: View {
    
    
//    @State private var selectedDay: Int = 0
    @State var obj1 = ""
        @State var details: [DetailsObjectifs] = [
            DetailsObjectifs(image: "imgbreath", obj: "Faire 30 mn de footing", doo: false, point: 10, id: 0),
            DetailsObjectifs(image: "imgbreath", obj: "Faire une séance de yoga", doo: false, point: 15, id: 1)
        ]
    
    
    var body: some View {
            NavigationView {
                
                VStack {
                    
                    HorizontalScrollDaysObjectifs()
                    
                    HStack {
                        
                        Text("Mercredi")
                            .font(.title)
                            .padding(.trailing,210)
                    }
                    Spacer()

                    VStack {
                        
                        ForEach(details, id: \.id) {
                            objectif in
                            HStack {
                                VStack {
                                    Image(objectif.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50)
                                }
                                
                                VStack {
                                    Text(objectif.obj)
                                }
                                
                                .padding(.vertical, 30)
                                
                                VStack {
                                    Toggle(
                                        isOn: self.$details[objectif.id].doo, label: {
                                            Text("")
                                    })
                                }
                            }
                        }
                    } .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.blue, lineWidth: 6)
                            .frame(width: 350, height: 350))
                    
                        .padding(.horizontal, 30)
                    
                    
                    VStack {
                        
                        NavigationLink(destination: ChoicesBilan()) {
                            Text("Bilan")
                        }
                        
                    }
                    
                    
                    Spacer()
                }
                
                    
//                    .padding(.top, 170)
                
                
                
                
                
                
                    .navigationBarTitle("Objectifs")
            }
        }
    }

    struct MainPageObjectifs_Previews: PreviewProvider {
        static var previews: some View {
            MainPageObjectifs()
        }
    }



//.multilineTextAlignment(.center)
//.lineSpacing(10)
//.rotationEffect(.degrees(20), anchor: UnitPoint(x: 0, y: 0))
//.rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
//.shadow(color: .gray, radius: 2, x: 0, y: 15)
