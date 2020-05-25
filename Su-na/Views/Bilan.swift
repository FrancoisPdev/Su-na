//
//  Bilan.swift
//  Su-na
//
//  Created by PARENT François on 11/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//
//  Le but ici est de creer un ecran bilan contenant des choix pour l'utilisateur.rices. cela permettera d'etablir un planning pour l'ecran "objectifs"
//  Elle ne sera chargée qu'une fois à la premiere connexion de l'utilisateur
//  Puis elle sera consultable à l'infini sur la page "Objectifs" en affichage "modal" pour les futurs changements des utilisateurs.rices
//
//  Un titre : Bilan
//  Un text : Qu'avez-vous besoin d'ameliorer
//  Un formulaire de 6 choix :
//  Alimentation
//  Decouverte
//  Detente
//  Sport
//  Stress
//  Temps pour soi


import SwiftUI

struct Bilan: View {
    
    var choiceuser: ChoiceBilan
    
    @Binding var choicesArray: [Category]
    
    
    @Binding var isSelected: Bool
    
    var body: some View {
        VStack(spacing: 30.0){
            Spacer()
            
            VStack {
                
                Button(action: {
                    self.isSelected.toggle()
                    
                }
                ) {
                    Image(choiceuser.image)
                        .clipShape(Circle())
                        .foregroundColor(.gray)
                }.buttonStyle(SimpleButtonStyle())
                .overlay(Circle().stroke(isSelected ? Color.green : Color.white, lineWidth: 2))

                Text(choiceuser.title)
                
            }
            
        }
        
        
    }
}

//struct Bilan_Previews: PreviewProvider {
//    static var previews: some View {
//        Bilan(choiceuser: choices[0], choicesArray: )
//    }
//}
