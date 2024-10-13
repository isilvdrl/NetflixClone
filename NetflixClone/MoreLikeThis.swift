//
//  MoreLikeThis.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 12.10.2024.
//

import SwiftUI

struct MoreLikeThis: View {
    var movies:[Movie]
    
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        ]
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView(.vertical,showsIndicators: false) {
                LazyVGrid(columns: columns){
                    ForEach(movies,id:\.id){ movie in
                        StandardHomeMovie(movie: movie)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    MoreLikeThis(movies: exampleMovies)
}
