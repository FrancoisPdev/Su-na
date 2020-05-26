//
//  SimpleButton.swift
//  Su-na
//
//  Created by PARENT François on 12/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

// simple boutton pour la selection

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

struct SimpleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(1.0)
        .background(
            Group {
                if configuration.isPressed {
                    Circle()
                        .fill(Color.offWhite)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: -5, y: -5)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: 10, y: 10)
                } else {
                    Circle()
                        .fill(Color.offWhite)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                }
            }
        )
    }
}
