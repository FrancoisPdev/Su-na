//
//  HistoryLive.swift
//  Su-na
//
//  Created by Schmidt Samuelk on 25/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct HistoryLive: View {
    var imageHistory: String
    var textHistory: String
    
    var body: some View {
        HStack {
            Image("\(self.imageHistory)")
            .resizable()
            .frame(width: 100, height: 100)
            .cornerRadius(15)
            .aspectRatio(contentMode: .fill)
            .scaledToFit()

            .overlay(
                VStack {
                    Spacer()
                Text("\(self.textHistory)")
                    .frame(maxWidth: .infinity,minHeight: 30, alignment: .center
                    )
                    .foregroundColor(Color.white)
                    .background(RoundedCorners(color: .black, tl: 0, tr: 0, bl: 25, br: 25))
                    .opacity(0.5)
                
            })
            
            
        
    }
}

}
struct HistoryLive_Previews: PreviewProvider {
    static var previews: some View {
        HistoryLive(imageHistory: "yoga2", textHistory: "Yoga")
    }
}
