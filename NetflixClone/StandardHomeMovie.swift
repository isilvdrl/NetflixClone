//
//  StandardHomeMovie.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 2.10.2024.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

#Preview {
    StandardHomeMovie(movie: exampleMovie1)
}
