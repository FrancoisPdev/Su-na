//
//  ChoiceBilan.swift
//  Su-na
//
//  Created by PARENT François on 12/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

//  le but ici , est de creer un tableau contenant les 6 images de l'asset bilanpic avec une boucle pour ensuite afficher la data sur l'ecran Bilan.swift
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
}

var choiceBilan = [ChoiceBilan(title: "Alimentation", image: "alimentation"),ChoiceBilan(title: "Decouverte", image: "decouverte"),ChoiceBilan(title: "Detente", image: "detente"),ChoiceBilan(title: "Sport", image: "sport"),ChoiceBilan(title: "Stress", image: "stress"),ChoiceBilan(title: "Temps pour soi", image: "tempspoursoi")]
