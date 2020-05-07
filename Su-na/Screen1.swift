//
//  Screen1.swift
//  Su-na
//
//  Created by PARENT François on 07/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct Screen1: View {
    var body: some View {
        NavigationLink(destination: Screen2()) {
            Text("go to RGPD")
        }.navigationBarTitle("Notifications")
    }
    
}


struct Screen1_Previews: PreviewProvider {
    static var previews: some View {
        Screen1()
    }
}
