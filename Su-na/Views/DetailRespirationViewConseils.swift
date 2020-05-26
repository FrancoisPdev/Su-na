//
//  DetaildecouvrirView.swift
//  Page conseils
//
//  Created by Reyhan 2 on 13/05/2020.
//  Copyright © 2020 Mikail. All rights reserved.
//

import SwiftUI

struct DetailRespirationViewConseils: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    
                    Text("Conseil du jour")
                        .font(.largeTitle)
                        .padding(.top, 0)
                    
                    Text("Exercice de respiration")
                        .font(.title)
                        .bold()
                        .padding(.top, 20)
                    
                    
                    VStack {
                        
                        Image("imgbreath")
                            .resizable()
                            .scaledToFit()
                            .padding(.top, 10)
                        
                        
                    } .frame(width: 350, height: 200)
                        .border(Color.gray, width: 3)
                        .cornerRadius(20)
                        .shadow(radius: 20)
                    
                    VStack(alignment: .trailing) {
                        
                        HStack {
                            Text("Durée : 1 minute")
                                .underline()
                                .padding(.leading, 25)
                                .padding(.top, 10)
                            Spacer()
                        }
                    }
                    VStack(alignment: .center) {
                        
                        Text("Cet exercice va nous permettre de se calmer, de mieux dormir, de baisser sa tension et d’être plus stable.")
                            .font(.headline)
                            .padding()
                        
                    }
                    
                    
                    Text("Alors ? Prêt ?")
                        .bold()
                        .font(.title)
                    
                    VStack {
                        
                        Text("1. Boucher votre narine gauche avec l’annulaire")
                            .padding()
                        
                        Text("2. Expirer de la narine droite puis inspirer de la même narine")
                            .padding()
                        
                        Text("3. Boucher la narine droite avec le pouce")
                            .padding()
                        
                        Text("4. Expirer de la narine gauche puis inspirer de la même narine")
                            .padding()
                        
                        Text("5. Répéter les étapes 1 à 4 pendant une minute")
                            .padding()
                        
                        Text("6. Terminer l’exercice expirant lentement par les deux narines")
                            .padding()
                        
                    }
                }
            }
        }
    }
}


struct DetaildecouvrirViewConseils_Previews: PreviewProvider {
    static var previews: some View {
        DetailRespirationViewConseils()
    }
}
