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
    //    @State var details: [Objectifs] = [
    //        Objectifs(image: "imgbreath", obj: "Faire 30 mn de footing", doo: false, point: 10, id: 0),
    //        Objectifs(image: "imgbreath", obj: "Faire une séance de yoga", doo: false, point: 15, id: 1)
    //    ]
    
    
//    @State var objectifOfTheDay: [Objectifs] {
//        switch selectedDay {
//        case 1:
//            return details1
//
//        default:
//            return details
//        }
//    }
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                HorizontalScrollDays()
                
                VStack(alignment: .trailing) {
                    HStack {
                        
                        Text("Mercredi")
                            .font(.title)
                            .padding(.trailing, 190)
                    }
                }
                
                //                .padding()
                
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
                            
//                            VStack {
//                                Text(objectif.obj)
//                            }
//                            VStack {
////                                Toggle(
////                                    isOn: self.$objectifOfTheDay[objectif.id].doo, label: {
////                                        Text("")
////                                })
//                            }
                        }
                    }
                }
                
            }.overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.blue, lineWidth: 6)
                    .frame(width: 350, height: 350))
                
                .padding(.top, 170)
            
            
            
            
            
            
            Spacer()
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
