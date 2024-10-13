//
//  Trailer.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 13.10.2024.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var thumbnailImageUrl: URL
    var videoUrl: URL
   // let description: String
   // let releaseDate: String
   //let type: String
}
