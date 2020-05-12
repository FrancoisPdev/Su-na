//
//  TitleCategories.swift
//  Su-na
//
//  Created by dikeys on 12/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct TitleCategories: View {
    var title: String
    var body: some View {
        Text("\(title)")
        .font(.title)
        .padding()
        .foregroundColor(Color.gray)
        .frame( maxWidth: .infinity, alignment: .topLeading)
    }
}

struct TitleCategories_Previews: PreviewProvider {
    static var previews: some View {
        TitleCategories(title: "test")
    }
}
