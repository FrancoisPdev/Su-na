//
//  FiltresView.swift
//  Page conseils
//
//  Created by Reyhan 2 on 13/05/2020.
//  Copyright © 2020 Mikail. All rights reserved.
//

import SwiftUI

struct FiltresViewConseils: View {
    @State private var isToggle : Bool = false
    @State private var isToggle2 : Bool = false
    @State private var isToggle3 : Bool = false
    @State private var isToggle4 : Bool = false
    @State private var isToggle5 : Bool = false
    @State private var isToggle6 : Bool = false
    
    var body: some View {
        //        NavigationView {
        VStack {
            Toggle(isOn: $isToggle){
                Text("STRESS")
                    .font(.title)
                
            }.padding(.trailing, 20)
                .padding(.bottom, 20)
                .padding(.top, 50)
            
            Toggle(isOn: $isToggle2){
                Text("ALIMENTAION")
                    .font(.title)
            }.padding(.trailing, 20)
                .padding(.bottom, 20)
            
            
            Toggle(isOn: $isToggle3){
                Text("TEMPS POUR SOI")
                    .font(.title)
            }.padding(.trailing, 20)
                .padding(.bottom, 20)
            
            
            Toggle(isOn: $isToggle4){
                Text("SPORT")
                    .font(.title)
            }.padding(.trailing, 20)
                .padding(.bottom, 20)
            
            Toggle(isOn: $isToggle5){
                Text("DETENTE")
                    .font(.title)
                
            }.padding(.trailing, 20)
                .padding(.bottom, 20)
            
            Toggle(isOn: $isToggle6){
                Text("DECOUVERTE")
                    .font(.title)
            }.padding(.trailing, 20)
               
            
            Spacer()
        }.padding(.leading, 20)
            .navigationBarTitle("Filtres")
        //            , displayMode: .inline
        //        }
    }
}

struct FiltresView_Previews: PreviewProvider {
    static var previews: some View {
        FiltresViewConseils()
    }
}

//@State private var isToggle : Bool = false
// var body: some View {
// VStack {
//    Toggle(isOn: $isToggle){
//       Text(“Switch “)
//          .font(.title)
//          .foregroundColor(Color.white)
//    }
//  }.padding()
//   .background(isToggle ? Color.orange : Color.purple)
//}
