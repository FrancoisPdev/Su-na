//
//  Live.swift
//  Su-na
//
//  Created by dikeys on 11/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import SwiftUI

struct Live: View {
    var body: some View {
        NavigationView {
            VStack{
                
                TitleCategories(title: "Live en direct")
                    
                Divider()
               
                ScrollView(.horizontal){
                  
                     NavigationLink(destination: testse()){
                                       GetUrlVideos()
                     }.buttonStyle(PlainButtonStyle())
                        
                    }
                
               
                Divider()
                TitleCategories(title: "Live passé")
                Divider()
                Spacer()
                
            }
                
                .navigationBarTitle("Vidéo", displayMode: .inline)
            
        }
        
    }
}

struct Live_Previews: PreviewProvider {
    static var previews: some View {
        Live()
    }
}
