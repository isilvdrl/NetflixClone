//
//  Episode.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 9.10.2024.
//

import Foundation

struct Episode: Identifiable{
    var id = UUID().uuidString
    var name: String
    var season: Int
    var context: String
    var time: Int
    var thumbnailImageString: String
    var episodeNumber: Int
    var videoURL: URL
    
    var thumbnailImageURL: URL{
        return URL(string: thumbnailImageString)!
    }
    
}
