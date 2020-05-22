//
//  ChoiceBilan.swift
//  Su-na
//
//  Created by PARENT François on 12/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

//  le but ici , est de creer la struct contenant les 6 images de l'asset bilanpic +le text pour afficher la data sur l'ecran Bilan.swift
//  6 choix :
//  Alimentation
//  Decouverte
//  Detente
//  Sport
//  Stress
//  Temps pour soi



struct ChoiceBilan: Identifiable {
    
    var id = UUID()
    var title: String
    var image: String
    var cat: Category
}

enum Category {
    
    case   Alimentation,    Decouverte, Detente,    Sport,  Stress, Tempspoursoi
}
