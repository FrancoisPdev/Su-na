//
//  Live.swift
//  Su-na
//
//  Created by dikeys on 11/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI
import UIKit
struct PageVideo: View {
    
    var body: some View {
        NavigationView {
            
            ScrollView(showsIndicators: false){
                VStack{
                    Spacer()
                        .frame(height: 12)
                    TitleCategories(title: "Live en direct")
                    
                    Divider()
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(videos){video in
                                
                                NavigationLink(destination:VideoCardTestView(video: video)){
                                    VideoView(video: video)
                                }.buttonStyle(PlainButtonStyle())
                                
                            }
                        }
                    }.padding([.top, .leading, .bottom], 22.0)
                    
                    
                    Divider()
                    TitleCategories(title: "Live passé")
                    
                    Divider()
            
                    VideopassedView(videosPassed: videosPassed)
                }
                
            }.navigationBarTitle("Vidéo", displayMode: .inline)
            
        }
    }
    
}
struct PageVideo_Previews: PreviewProvider {
    
    static var previews: some View {
        PageVideo()
    }
}


