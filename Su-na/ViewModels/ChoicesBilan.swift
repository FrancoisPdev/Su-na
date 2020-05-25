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
    
    @State private var isSelected0 = false
    @State private var isSelected1 = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    @State private var isSelected4 = false
    @State private var isSelected5 = false
    
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            
            VStack{
                //            Text principale
                Text("Qu'avez-vous besoin d'ameliorer ?")
                // Boucle pour afficher la data
                
                ForEach ( choices, id: \.id) {
                    choice in
                    Bilan(choiceuser: choice, choicesArray: self.$categories,    isSelected: self.selectedChoice(choice)
                    )
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
    
    func selectedChoice (_ choice: ChoiceBilan) -> Binding<Bool> {
        
        switch choice.id {
        case 0:
            return $isSelected0
        case 1:
            return $isSelected1
        case 2:
            return $isSelected2
        case 3:
            return $isSelected3
        case 4:
            return $isSelected4
        case 5:
            return $isSelected5
        default:
            return  $isSelected0
            
        }
        
    }
}

struct ChoicesBilan_Previews: PreviewProvider {
    static var previews: some View {
        ChoicesBilan()
    }
}


var choices = [
    ChoiceBilan(id: 0, title: "Alimentation", image: "alimentation", cat: Category.Alimentation),
    ChoiceBilan(id: 1, title: "Decouverte", image: "decouverte", cat: Category.Decouverte),
    ChoiceBilan(id: 3, title: "Detente", image: "detente", cat: Category.Detente),
    ChoiceBilan(id: 4, title: "Sport", image: "sport", cat: Category.Sport),
    ChoiceBilan(id: 5, title: "Stress", image: "stress", cat: Category.Stress),
    ChoiceBilan(id: 6, title: "Temps pour soi", image: "tempspoursoi", cat: Category.Tempspoursoi)
]

