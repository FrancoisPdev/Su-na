//
//  ContentView.swift
//  Su-na
//
//  Created by PARENT François on 07/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationView{
            NavigationLink(destination: Screen1()) {
                
                Text("Go to notification")
                

            }.navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
