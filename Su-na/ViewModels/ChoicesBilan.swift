//
//  ChoicesBilan.swift
//  Su-na
//
//  Created by PARENT François on 13/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct ChoicesBilan: View {
    @State var categories: [Category] = []

    
    var body: some View {
        
        ScrollView{
            VStack(spacing: 30.0){
                //            Text principale
                Text("Qu'avez-vous besoin d'ameliorer ?")
                // Boucle pour afficher la data
        
                ForEach ( choices, id: \.id) {
                    choice in  Bilan(choiceuser: choice, choicesArray: self.$categories )
                }
                Spacer()
                //          Button "valider"
                Button(action: {
                    print("Button action")
                }) {
                    Text("Valider")
                        .padding(10.0)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 2.0)
                                .shadow(color: .blue, radius: 10.0)
                    )
                }.padding(10.0)
            }
        }
        
        
    }
}

struct ChoicesBilan_Previews: PreviewProvider {
    static var previews: some View {
        ChoicesBilan()
    }
}


var choices = [
    ChoiceBilan(title: "Alimentation", image: "alimentation", cat: Category.Alimentation),
    ChoiceBilan(title: "Decouverte", image: "decouverte", cat: Category.Decouverte),
    ChoiceBilan(title: "Detente", image: "detente", cat: Category.Detente),
    ChoiceBilan(title: "Sport", image: "sport", cat: Category.Sport),
    ChoiceBilan(title: "Stress", image: "stress", cat: Category.Stress),
    ChoiceBilan(title: "Temps pour soi", image: "tempspoursoi", cat: Category.Tempspoursoi)
]
