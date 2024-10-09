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
    
    var personalEpisode: PersonalEpisodeInfo
    
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
                    
                    Text(movie.promotionHeadline!)
                        .font(.headline)
                        .bold()
                    
                    WhiteButton(text: "Play", imageName: "play.fill", action: {},color: .red, fcolor: .white).padding(.horizontal, 10)
                        
                    HStack {
                        Text("S\(personalEpisode)")
                    }
                    
                    HStack{
                        
                        SmallAnimatedButtons(text: "My List", isOnImage: "checkmark", isOffImage: "checkmark", isOn: true, action: {})
                        SmallAnimatedButtons(text: "Rated", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup.fill", isOn: true, action: {})
                        Spacer()
                    }.padding(.leading,15)
                        
                        
                    
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
            
            RatingView(movie: movie)
            
            Text(movie.numberOfSeasonsDisplay)
            
        }.foregroundColor(.gray)
    }
}

struct RatingView: View {
    var movie:Movie
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(String(movie.rating))
                .bold()
        }.foregroundColor(.white)
            .frame(width: 70,height: 20)
            .font(.system(size: 15))
    }
}
