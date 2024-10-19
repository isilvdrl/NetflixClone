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
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    

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
                    
                    WhiteButton(
                        text: "Play",
                        imageName: "play.fill",
                        action: {},
                        color: .red,
                        fcolor: .white
                    ).padding(.horizontal, 10)
                        
                    CurrentEpisodeInformation(movie: movie)
                    
                    CastInfo(movie: movie)
                  
                    PersonalizationButtons()
                        
                    CustomTabSwitcher(tabs: [.episodes,.trailers,.more],movie: movie)
                    
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

struct CurrentEpisodeInformation: View {
    var movie: Movie
    
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                Spacer()
            }.bold()
                .padding(.vertical,4)
                .padding(.horizontal,15)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                Spacer()
            }.font(.subheadline)
                .padding(.horizontal,15)
        }
    }
}

struct CastInfo: View {
    var movie : Movie
    
    var body: some View {
        VStack {
            HStack {
                Text("Cast:\(movie.cast)")
                Spacer()
            }
            
            HStack {
                Text("Creators:\(movie.creator)")
                Spacer()
            }
        }.padding(.horizontal,15)
            .padding(.vertical,4)
            .font(.system(size:15))
            .foregroundColor(.gray)
    }
}

struct PersonalizationButtons: View {
    var body: some View {
        HStack(spacing:60){
            
            SmallAnimatedButtons(
                text: "My List",
                isOnImage: "checkmark",
                isOffImage: "plus",
                isOn: true,
                action: {})
            
            SmallAnimatedButtons(
                text: "Rated",
                isOnImage: "hand.thumbsup.fill",
                isOffImage: "hand.thumbsup",
                isOn: true,
                action: {})
            
            SmallAnimatedButtons(
                text: "Share",
                isOnImage: "square.and.arrow.up",
                isOffImage: "square.and.arrow.up",
                isOn: false,
                action: {})
            
            Spacer()
        }.padding(.vertical,4)
         .padding(.leading,30)
    }
}
