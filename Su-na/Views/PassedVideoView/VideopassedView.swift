//
//  VideopassedView.swift
//  Su-na
//
//  Created by dikeys on 13/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct VideopassedView: View {
    var videosPassed: [UrlVideo]
    var body: some View {
     

        GridStack(rows: 2, columns: 2, hSpacing: 2, vSpacing: 7) { row, col in
            HStack{
                NavigationLink(destination:VideoCardTestView(video: self.videosPassed[row * 2 + col])){
                    videoPlanView(frameWidthSize: 190, frameHeightSize: 190, cornerRadiusForImage: 0, videoTitle: "\(self.videosPassed[row * 2 + col].title)", videoImage: "\(self.videosPassed[row * 2 + col].image)")

                                             }.buttonStyle(PlainButtonStyle())
                
            }

        }
//        videoPlanView(frameWidthSize: 190, frameHeightSize: 190, cornerRadiusForImage: 0, videoTitle: videoPassed.title, videoImage: videoPassed.image)
}
}
struct VideopassedView_Previews: PreviewProvider {
    static var previews: some View {
        VideopassedView(videosPassed: videosPassed)
    }
}
