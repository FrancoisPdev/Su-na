//
//  GetUrlVideos.swift
//  Su-na
//
//  Created by dikeys on 12/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

let  videos = [UrlVideo( url: "https://www.youtube.com/watch?v=mh04Cl2Wa0E", image: "yoga"), UrlVideo(url: "https://www.youtube.com/watch?v=vVMi-c7bm3I", image: "Cuisine"), UrlVideo(url: "https://www.youtube.com/watch?v=vVMi-c7bm3I", image: "Sport")]

struct GetUrlVideos: View {
    var body: some View {
            HStack{
            ForEach(videos, id: \.id){video in
                Image("\(video.image)")
                    .resizable()
                .frame(width: 150, height: 210)
                    
                    .clipShape(Rectangle())
                .cornerRadius(25)
            }
        }
    }
}

struct GetUrlVideos_Previews: PreviewProvider {
    static var previews: some View {
        GetUrlVideos()
    }
}
