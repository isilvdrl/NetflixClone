//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 2.10.2024.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "Harry Potter 1", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] )
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Harry Potter 2", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] )
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Harry Potter 3", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] )
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Harry Potter 4", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] )
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Harry Potter 5", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] )
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Harry Potter 6", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] )
let exampleMovie7 = Movie(id: UUID().uuidString, name: "Harry Potter 7", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] )
let exampleMovie8 = Movie(id: UUID().uuidString, name: "Harry Potter 8", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] )

let exampleMovies : [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7, exampleMovie8]


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient( gradient: Gradient(
         colors:[Color.black.opacity(0.95), Color.black.opacity(0.0)]),
         startPoint: .bottom,
         endPoint: .top)
        
}
