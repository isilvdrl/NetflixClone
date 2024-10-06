//
//  TopMoviesPreview.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 4.10.2024.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviesPreview: View {
    var movie : Movie
    func isCategoryLast( category: String)-> Bool{
        if movie.categories.last == category {
            return true
        }else{
            return false
        }
            
    }
    
    var body: some View {
        
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self){ category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if !isCategoryLast(category: category){
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 4))
                                }
                            
                        }
                        
                    }
                }
                    
                HStack {
                    Spacer()
                    SmallAnimatedButtons(text: "My List", isOnImage: "checkmark", isOffImage: "plus" , isOn: true, action: {})
                    Spacer()
                    WhiteButton(text: "Play", imageName: "play.fill", action: {})
                        .frame(width:  120)
                    Spacer()
                    SmallAnimatedButtons(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true, action: {})
                    Spacer()
                }
            }.foregroundColor(.white)
            
              .background(LinearGradient.blackOpacityGradient
                .padding(.top,250)
                )
        }
        
    }
}

#Preview {
    TopMoviesPreview(movie: exampleMovie1)
}
