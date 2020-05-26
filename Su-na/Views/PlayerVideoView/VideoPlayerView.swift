//
//  VideoPlayerView.swift
//  Su-na
//
//  Created by dikeys on 13/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//
import Foundation
import SwiftUI
import AVKit
struct VideoCardTestView: View {
    
    @State var addComment: String = ""
    @State var vote: Int = 0
    var video: UrlVideo
    var textCommentPluriel: Bool{
        video.comment.count >= 2
    }
    var body: some View {
        NavigationView{
            //
            VStack{
                
                //            VideoViews(videoURL: URL(string: "\(video.url)")!, previewLength: 60)
                //                .frame(width: nil, height: 200, alignment: .center)
                //                .shadow(color: Color.black.opacity(0.7), radius: 30, x: 0, y: 2)
                //                .padding(.horizontal, 20)
                //                .padding(.top, 20)
                //
                //
                //
                //            Spacer()
                //            Text("\(video.title)")
                //            Text("\(video.url)")
                Player(urlVideo: video.url).frame(height: UIScreen.main.bounds.height / 3)
                
                VStack(alignment: .leading){
                    Text("#\(video.userName)")
                        .foregroundColor(.blue)
                    
                    Text("\(video.subTitle ?? video.title )")
                        .font(.title)
                        .fontWeight(.thin)
                    Text("\(Date())")
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                HStack{
                    
                    Text("\(video.comment.count) \(self.textCommentPluriel ? "commentaires" : "commentaire") ")
                    Spacer()
                    Image(systemName: "hand.thumbsup.fill")
                        .foregroundColor(.blue)
                        .font(.title)
                        .onTapGesture {
                            self.vote += 1
                    }
                    Text("\(vote) Like")
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading, .trailing])
                Divider()
                List(video.comment){ comments in
                    VStack(alignment: .leading){
                    HStack{
                        Text("\(comments.user)")
                            .fontWeight(.bold)
                        Text("il y a ??")
                            .fontWeight(.ultraLight)
                        
                    }
                        Text("\(comments.content)")
                    }
                }
               
                Spacer()
                TextField("Ajouter un commentaire", text: $addComment )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }.navigationBarTitle("Live", displayMode: .inline)
        }
    }
}





struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoCardTestView(video: UrlVideo( title: "Se relaxer en jardinant", url: "https://static.videezy.com/system/resources/previews/000/036/700/original/Plant_growth3.mp4", userName: "tiboInshap", image: "jardin", comment: [CommentVideo(user: "Nico P", content: "Ça me fait un bien fou"), CommentVideo(user: "Josephine M", content: "Cela fait logntemps que je voulis m'y merci !!")]))
    }
}
