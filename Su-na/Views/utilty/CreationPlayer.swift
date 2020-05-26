//
//  CreationPlayer.swift
//  Su-na
//
//  Created by dikeys on 13/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import SwiftUI

class PlayerView: UIView {
    private let playerLayer = AVPlayerLayer()
    private var previewTimer:Timer?
    var previewLength:Double
    let playerController = AVPlayerViewController()
    init(frame: CGRect, url: URL, previewLength:Double) {
        self.previewLength = previewLength
        super.init(frame: frame)
        
        // Create the video player using the URL passed in.
        let player = AVPlayer(url: url)
        player.volume = 0 // Will play audio if you don't set to zero
        player.play() // Set to play once created
        
        // Add the player to our Player Layer
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill // Resizes content to fill whole video layer.
        playerLayer.backgroundColor = UIColor.black.cgColor
        playerController.showsPlaybackControls = true
        previewTimer = Timer.scheduledTimer(withTimeInterval: previewLength, repeats: true, block: { (timer) in
            player.seek(to: CMTime(seconds: 0, preferredTimescale: CMTimeScale(1)))
        })
        

        layer.addSublayer(playerLayer)
    }
    
    required init?(coder: NSCoder) {
        self.previewLength = 15
        super.init(coder: coder)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
}


struct VideoViews: UIViewRepresentable {
    
    var videoURL:URL
    var previewLength:Double?
    
    func makeUIView(context: Context) -> UIView {
        return PlayerView(frame: .zero, url: videoURL, previewLength: previewLength ?? 15)
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
}
