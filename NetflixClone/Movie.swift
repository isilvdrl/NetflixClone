//
//  Movie.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 2.10.2024.
//

import Foundation

struct Movie: Identifiable {
    
    var id: String
    var name: String
    var thumbnailURL : URL
    var categories: [String]
    //movieDetailView
    var year: Int
    var numberOfSeasons: Int?
    var rating: String
    
    var numberOfSeasonsDisplay: String{
        
        if let num = numberOfSeasons{
            if num == 1{
                return "1 Season"
            }else{
                return "\(num) Seasons"
            }
        }
        return ""
    }

}
