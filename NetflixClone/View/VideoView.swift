//
//  VideoView.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 13.10.2024.
//

import SwiftUI
import AVKit

struct VideoView: View {
    var url:URL
    var player: AVPlayer{
        AVPlayer(url: url)
    }
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VideoPlayer(player: player)
        }
    }
}

#Preview {
    VideoView(url: exampleTrailerUrl)
}

