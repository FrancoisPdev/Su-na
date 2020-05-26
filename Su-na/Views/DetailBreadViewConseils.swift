//
//  DetailBreadView.swift
//  Page conseils
//
//  Created by Reyhan 2 on 13/05/2020.
//  Copyright © 2020 Mikail. All rights reserved.
//

import SwiftUI

struct DetailBreadViewConseils: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    
                    Text("Conseil 1")
                        .font(.largeTitle)
                        .padding(.top, 0)
                    
                    Text("Faire du pain")
                        .font(.title)
                        .bold()
                        .padding(.top, 20)
                    
                    
                    VStack {
                        
                        Image("imgbreaddd")
                            .resizable()
                            .scaledToFit()
                            .padding(.top, 10)
                        
                        
                    } .frame(width: 350, height: 200)
                        .border(Color.gray, width: 3)
                        .cornerRadius(20)
                        .shadow(radius: 20)
                    
                    VStack(alignment: .trailing) {
                        
                        HStack {
                            Text("Durée : 3h15 (2h de repos, 1h de cuisson et 15mn de de préparation)")
                                .underline()
                                .padding(.leading, 25)
                                .padding(.top, 10)
                            Spacer()
                        }
                    }
                    VStack(alignment: .center) {
                        
                        Text("Rien de mieux dans toutes les sortes de pain que celui maison 😉. Faisons-en !")
                            .font(.headline)
                            .padding()
                        
                    }
                    
                    VStack {
                        
                        Text("Prérecquis pour 4 personnes:")
                            .bold()
                            .underline()
                        
                        Text("- 350 g de farine")
                        Text("- 10 g de levure de boulangerie")
                        Text("- 25 cl d'eau tiède")
                        Text("- sel")
                        
                        
                    }
                    
                    Text("Alors ? Prêt ?")
                        .bold()
                        .font(.title)
                        .padding(.top, 20)
                    
                    VStack {
                        
                        Text("1. Versez la farine et le sel dans une terrine. Mélangez ces le tout et creusez ensuite un puits au milieu avec votre main")
                            .padding()
                        
                        Text("2. Dans un autre récipient, versez de l'eau tiède et ajoutez-y la levure boulangère. Mélangez le tout avec une cuillère pour diluer la levure. Une fois le mélange bien homogène, versez-le dans le puits de la terrine")
                            .padding()
                        
                        Text("3. Mélangez progressivement les ingrédients de votre terrine, puis pétrissez la pâte manuellement pendant environ 10 min, jusqu'à ce que celle-ci devienne lisse et élastique.  N'hésitez pas à enduire vos mains de farine afin que la pâte n'accroche pas sur votre peau et soit plus facile à travailler.")
                            .padding()
                        
                        Text("4. Mettez la pâte pétrie dans un moule à cake que vous aurez préalablement beurré et laissez-la gonfler pendant au moins 2 heures, à température ambiante et recouverte d'un torchon propre. Enfournez-la ensuite au four à 180°C pendant 1 heure jusqu'à ce que la croûte commence à dorer.")
                            .padding()
                        
                        Text("5. Bon appétit ! 😋")
                            .padding()
                        
                    }
                }
            }
        }
    }
}

struct DetailBreadViewConseils_Previews: PreviewProvider {
    static var previews: some View {
        DetailBreadViewConseils()
    }
}
