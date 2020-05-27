//
//  FiltresView.swift
//  Page conseils
//
//  Created by Reyhan 2 on 13/05/2020.
//  Copyright © 2020 Mikail. All rights reserved.
//

import SwiftUI

struct FiltresViewConseils: View {
    @State private var ToggleStress : Bool = true
    @State private var ToggleAlimentation : Bool = true
    @State private var ToggleTempsPourSoi : Bool = false
    @State private var ToggleSport : Bool = true
    @State private var ToggleDetente : Bool = false
    @State private var ToggleDecouverte : Bool = false
    
    var body: some View {
        //        NavigationView {
        VStack {
            Toggle(isOn: $ToggleStress){
                Text("STRESS")
                    .font(.title)
                
            }.padding(.trailing, 20)
                .padding(.bottom, 20)
                .padding(.top, 50)
            
            Toggle(isOn: $ToggleAlimentation){
                Text("ALIMENTAION")
                    .font(.title)
            }.padding(.trailing, 20)
                .padding(.bottom, 20)
            
            
            Toggle(isOn: $ToggleTempsPourSoi){
                Text("TEMPS POUR SOI")
                    .font(.title)
            }.padding(.trailing, 20)
                .padding(.bottom, 20)
  
            
            Toggle(isOn: $ToggleSport){
                Text("SPORT")
                    .font(.title)
            }.padding(.trailing, 20)
                .padding(.bottom, 20)
            
            Toggle(isOn: $ToggleDetente){
                Text("DETENTE")
                    .font(.title)
                
            }.padding(.trailing, 20)
                .padding(.bottom, 20)
            
            Toggle(isOn: $ToggleDecouverte){
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
