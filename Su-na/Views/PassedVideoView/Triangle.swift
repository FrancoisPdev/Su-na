//
//  Triangle.swift
//  Su-na
//
//  Created by dikeys on 12/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import Foundation
import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
      

        return path
    }
}

struct Triangle_Previews: PreviewProvider {
    static var previews: some View {
        Triangle()
    }
}
