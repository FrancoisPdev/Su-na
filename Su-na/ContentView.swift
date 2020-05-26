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
                VStack {
            Image("yoga2")
                .resizable()
                .scaledToFit()
//                .overlay(ImageOverlay(), alignment: .center)
            Spacer()
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
