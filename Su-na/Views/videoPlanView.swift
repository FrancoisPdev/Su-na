//
//  videoPlanView.swift
//  Su-na
//
//  Created by dikeys on 13/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct videoPlanView: View {
    var frameWidthSize: CGFloat // largeur image
    var frameHeightSize: CGFloat // hauteur image
    var cornerRadiusForImage: CGFloat // bordure image
    var videoTitle: String // titre
    var videoImage: String //image
    var body: some View {
        HStack{
                        Image(self.videoImage)
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .clipShape(Rectangle())
            .frame(width: self.frameWidthSize, height: self.frameHeightSize)
            .cornerRadius(self.cornerRadiusForImage)
            .scaledToFit()
                .overlay(
                    VStack{
                        Spacer()
                LogoPlayer()
                        Spacer()
                        Text("\(self.videoTitle)")
                    .frame(maxWidth: .infinity,minHeight: 30, alignment: .center
                )
            
                    .background(RoundedCorners(color: .black, tl: 0, tr: 0, bl: 20, br: 45))
                    .opacity(0.5)
                .foregroundColor(Color.white)
                    }
        )
        }
    }
}



struct videoPlanView_Previews: PreviewProvider {
    static var previews: some View {
        videoPlanView(frameWidthSize: 150, frameHeightSize: 250, cornerRadiusForImage: 0, videoTitle: "testTitle", videoImage: "yoga")
    }
}
