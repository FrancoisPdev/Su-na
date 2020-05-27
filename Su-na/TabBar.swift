//
//  TabBar.swift
//  Su-na
//
//  Created by Reyhan 2 on 11/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
            TabView {
                MainPageObjectifs()
                    .tabItem {
                        Image(systemName: "bolt")
                        Text("Objectifs")
                }
                MainPageConseils()
                    .tabItem {
                        Image(systemName: "lightbulb")
                        Text("Conseils")
                }
                PageVideo()
                    .tabItem {
                        Image(systemName: "arrowtriangle.right")
                        Text("Vidéos")
                }
                ProfilView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profil")
                }
            }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
