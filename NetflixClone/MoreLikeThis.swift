//
//  MoreLikeThis.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 12.10.2024.
//

import SwiftUI

struct MoreLikeThis: View {
    var movie:Movie
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView(.vertical,showsIndicators: false) {
                VStack{
                    HStack{
                       
                    }
                }
            }
        }
    }
}

#Preview {
    MoreLikeThis(movie: exampleMovie1)
}
