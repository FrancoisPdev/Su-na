//
//  Player.swift
//  Su-na
//
//  Created by dikeys on 23/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import Foundation
import SwiftUI
import AVKit

struct Player: UIViewControllerRepresentable{
    
    var urlVideo: String
    
    
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<Player> ) -> AVPlayerViewController {
        
        let controller = AVPlayerViewController()
        let url = URL(string:  urlVideo)
        let playerVideo = AVPlayer(url: url!)
        playerVideo.play()
        controller.player = playerVideo
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<Player>) {
        
    }
}
