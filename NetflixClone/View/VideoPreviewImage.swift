//
//  VideoPreviewImage.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 13.10.2024.
//

import SwiftUI
import KingfisherSwiftUI

struct VideoPreviewImage: View {
    var imageURL: URL
    var videoURL: URL
    @State var isPlaying: Bool = false
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Button(action: {
                isPlaying = true
                },
                   label:{
                Image(systemName: "play.circle")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
            } ).sheet(isPresented: $isPlaying,
                      content: {VideoView(url: videoURL)})
        }
        
    }
}

#Preview {
    VideoPreviewImage(imageURL: exampleTrailerImageURL1, videoURL: exampleTrailerUrl)
}
