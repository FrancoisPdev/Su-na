//
//  Logoplayer.swift
//  Su-na
//
//  Created by dikeys on 12/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct LogoPlayer: View {
    var body: some View {
        return Circle().stroke(Color.gray, lineWidth: 2).foregroundColor(Color.clear).frame(width: 56, height: 56).overlay(
        Triangle()
            .stroke(Color.gray, lineWidth:2)
            .rotationEffect(Angle(degrees: 90))
            .frame(width: 40, height: 40)
            .offset(x: 5, y: 0)
        )
    }
}

struct LogoPlayer_Previews: PreviewProvider {
    static var previews: some View {
        LogoPlayer()
    }
}
