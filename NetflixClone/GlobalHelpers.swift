//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 2.10.2024.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "Harry Potter 1", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"],year: 2018,rating: "TV-MA", promotionHeadline:"Season 3 Coming Soon", numberOfSeasons: 3, defaultPersonalEpisodeInfo: exampleEpisodeInfo)

let exampleMovie2 = Movie(id: UUID().uuidString, name: "Harry Potter 2", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2010,rating: "TV-MA", defaultPersonalEpisodeInfo: exampleEpisodeInfo )


let exampleMovie3 = Movie(id: UUID().uuidString, name: "Harry Potter 3", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"],year: 2006,rating: "TV-MA", defaultPersonalEpisodeInfo: exampleEpisodeInfo )


let exampleMovie4 = Movie(id: UUID().uuidString, name: "Harry Potter 4", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2002,rating: "TV-MA", defaultPersonalEpisodeInfo: exampleEpisodeInfo )


let exampleMovie5 = Movie(id: UUID().uuidString, name: "Harry Potter 5", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2003,rating: "TV-MA", defaultPersonalEpisodeInfo: exampleEpisodeInfo )
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Harry Potter 6", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2009,rating: "TV-MA", defaultPersonalEpisodeInfo: exampleEpisodeInfo )
let exampleMovie7 = Movie(id: UUID().uuidString, name: "Harry Potter 7", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"],year: 2013,rating: "TV-MA", defaultPersonalEpisodeInfo: exampleEpisodeInfo )
let exampleMovie8 = Movie(id: UUID().uuidString, name: "Harry Potter 8", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2015,rating: "TV-MA", defaultPersonalEpisodeInfo: exampleEpisodeInfo )

let exampleMovies : [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7, exampleMovie8]
let exampleEpisodeInfo = PersonalEpisodeInfo(episodeName: "The Stranger", seasone: 2, number: 4, description: "In the quaint town of Maplewood, life flows in a predictable rhythm—until a mysterious stranger arrives one foggy morning. Clad in a weathered coat and carrying an old leather satchel, the newcomer captures the attention of the townsfolk, stirring both curiosity and suspicion.")


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient( gradient: Gradient(
         colors:[Color.black.opacity(0.95), Color.black.opacity(0.0)]),
         startPoint: .bottom,
         endPoint: .top)
        
}
