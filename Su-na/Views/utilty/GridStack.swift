//
//  GridStack.swift
//  Su-na
//
//  Created by dikeys on 13/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI



struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let hSpacing: CGFloat
    let vSpacing: CGFloat
    let content: (Int, Int) -> Content

    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< self.columns, id: \.self) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }

    init(rows: Int, columns: Int,hSpacing: CGFloat,vSpacing: CGFloat, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
        self.hSpacing = hSpacing
        self.vSpacing = vSpacing
    }
}
