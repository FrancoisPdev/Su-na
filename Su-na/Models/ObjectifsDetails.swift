//
//  ObjectifsDetails.swift
//  IIez
//
//  Created by Reyhan 2 on 20/05/2020.
//  Copyright © 2020 Mikail. All rights reserved.
//

import SwiftUI

struct Objectifs: Identifiable {
    var image: String
    var obj: String
    var doo: Bool
    var point: Int
    var id: Int
}



var details: [Objectifs] = [
    Objectifs(image: "imgbreath", obj: "Faire 30 mn de footing", doo: false, point: 10, id: 0),
    Objectifs(image: "imgbreath", obj: "Faire une séance de yoga", doo: false, point: 15, id: 1)
]

var details1: [Objectifs] = [
    Objectifs(image: "imgbreath", obj: "Faire", doo: false, point: 10, id: 0),
    Objectifs(image: "imgbreath", obj: "Faire", doo: false, point: 15, id: 1)
]


