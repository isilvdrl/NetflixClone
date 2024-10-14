//
//  TemplateList.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 14.10.2024.
//

import SwiftUI

struct TrailerList: View {
    var trailers: [Trailer]
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView(.vertical) {
                ForEach(trailers, id:\.id){ trailer in
                    VStack(alignment: .leading){
                        VideoPreviewImage(imageURL: trailer.thumbnailImageUrl, videoURL: trailer.videoUrl)
                        Text(trailer.name)
                            .font(.headline)
                            .padding(.leading,150)
                            .padding(.bottom,10)
                    }.foregroundColor(.white)
                }
            }
        }
    }
}

#Preview {
    TrailerList(trailers: exampleTrailers)
}
