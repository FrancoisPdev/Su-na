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
    var body: some View {
        ScrollView{
            VStack(spacing: 30.0){
                Spacer()
                //            Text principale
                Text("Qu'avez-vous besoin d'ameliorer ?")
                
                //          Alimentation
//                VStack {
//                    Button(action: {
//                        print("Button tapped")
//                    }) {
//                        Image("alimentation")
//                            .clipShape(Circle())
//                            .foregroundColor(.gray)
//                    }
//                    .buttonStyle(SimpleButtonStyle())
//                    Text("Alimentation")
//                }
//                //          Decouverte
//                VStack{
//                    Button(action: {
//                        print("Button tapped")
//                    }) {
//                        Image("decouverte")
//                            .clipShape(Circle())
//                            .foregroundColor(.gray)
//
//                    }
//                    .buttonStyle(SimpleButtonStyle())
//                    Text("Decouverte")
//                }
//                //          Detente
//                VStack{
//                    Button(action: {
//                        print("Button tapped")
//                    }) {
//                        Image("detente")
//                            .clipShape(Circle())
//                            .foregroundColor(.gray)
//                    }
//                    .buttonStyle(SimpleButtonStyle())
//                }
//                Text("Detente")
//                //          Sport
//                VStack{
//                    Button(action: {
//                        print("Button tapped")
//                    }) {
//                        Image("sport")
//                            .clipShape(Circle())
//                            .foregroundColor(.gray)
//                    }
//                    .buttonStyle(SimpleButtonStyle())
//                    Text("Sport")
//                }
//                //          Stress
//                VStack{
//                    Button(action: {
//                        print("Button tapped")
//                    }) {
//                        Image("stress")
//                            .clipShape(Circle())
//                            .foregroundColor(.gray)
//                    }
//                    .buttonStyle(SimpleButtonStyle())
//                    Text("Stress")
//                }
//                //          Temps pour soi
//                VStack{
//                    Button(action: {
//                        print("Button tapped")
//                    }) {
//                        Image("tempspoursoi")
//
//                            .clipShape(Circle())
//                            .foregroundColor(.gray)
//                    }
//                    .buttonStyle(SimpleButtonStyle())
//                    Text("Temps pour soi")
//                }
                //          Button "valider"
                VStack{
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
                    }
                }
            }
        }
    }
}
struct Bilan_Previews: PreviewProvider {
    static var previews: some View {
        Bilan()
    }
}
