//
//  MovieDetail.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 8.10.2024.
//

import SwiftUI
import KingfisherSwiftUI

struct MovieDetail: View {
    var movie: Movie
    var screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Spacer()
                    Button(action: {},
                           label:{
                            Image(systemName:"xmark.circle")
                            .font(.system(size: 25))
                        })
                    }.padding(.horizontal,25)
                //main
                ScrollView(.vertical,showsIndicators: false){
                    
                    StandardHomeMovie(movie: movie)
                        .frame(width: screen.width / 2.5)
                    
                    MovieDetailSubHeadline(movie: movie)
                    
                    WhiteButton(text: "Play", imageName: "play.fill", action: {})
                        
                    Text("Bölüm içeriği")
                    Text("Small Animated Buttons")
                    
                    ScrollView(.horizontal,showsIndicators:false){
                       
                        HStack{
                            Spacer()
                            Text("EPISODES")
                            Spacer()
                            Text("TRAILERS & MORE")
                            Spacer()
                            Text("MORE LIKE THIS")
                        }.font(.headline)
                            
                    }
                    Text("Sezon dropdown button")
                    Text("Sezona ait bölümler")
                }
                
            }.foregroundColor(.white)
        }
    }
}

#Preview {
    MovieDetail(movie: exampleMovie1)
}

struct MovieDetailSubHeadline: View {
    var movie: Movie
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            Text(String(movie.rating))
            Text(movie.numberOfSeasonsDisplay)
            
        }.foregroundColor(.gray)
    }
}
