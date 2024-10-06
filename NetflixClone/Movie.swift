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
}
