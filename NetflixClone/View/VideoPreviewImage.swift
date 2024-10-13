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
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            KFImage(imageURL)
            Button(action: {},
                   label:{
                Image(systemName: "play.circle")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
            } )
        }
    }
}

#Preview {
    VideoPreviewImage(imageURL: exampleTrailerImageURL, videoURL: exampleTrailerUrl)
}
