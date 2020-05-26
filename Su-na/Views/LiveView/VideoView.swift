//
//  GetUrlVideos.swift
//  Su-na
//
//  Created by dikeys on 12/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI



struct VideoView: View {
    var video: UrlVideo
    var body: some View {
      
      
            
                videoPlanView(frameWidthSize: 150, frameHeightSize: 210, cornerRadiusForImage: 15, videoTitle: video.title, videoImage: video.image)
            
        
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(video: UrlVideo( title: "yoga", url: "https://www.youtube.com/watch?v=mh04Cl2Wa0E",userName: "yoga Life",  image: "Sport", comment: []))
    }
}
