//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 2.10.2024.
//

import Foundation
import SwiftUI

let exampleTrailerUrl = URL(string: "https://www.imdb.com/video/vi2007761177/?playlistId=tt0304141&ref_=tt_ov_vi")!
let exampleTrailerImageURL = URL(string: "https://ia.tmgrup.com.tr/fed1ad/0/0/0/0/525/394?u=http://i.tmgrup.com.tr/es/2018/05/05/tentene-rekor-fiyat-1525508552137.jpg")!
let trailer1 = Trailer(name: "of harry potter", thumbnailImageUrl: exampleTrailerImageURL, videoUrl: exampleTrailerUrl)
let trailer2 = Trailer(name: " potter", thumbnailImageUrl: exampleTrailerImageURL, videoUrl: exampleTrailerUrl)
let trailer3 = Trailer(name: " of harry ", thumbnailImageUrl: exampleTrailerImageURL, videoUrl: exampleTrailerUrl)

let exampleTrailers = [trailer1,trailer2,trailer3]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Harry Potter 1",
    thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!,
    categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"],
    year: 2018,
    rating: "TV-MA",
    promotionHeadline:"Season 3 Coming Soon",
    numberOfSeasons: 3,
    cast:"yyy" ,
    creator:"xxx",
    moreLikeThis: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )

let exampleMovie2 = Movie(id: UUID().uuidString, name: "Harry Potter 2", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2010,rating: "TV-MA", cast:"yyy" , creator:"xxx",moreLikeThis: [], trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )


let exampleMovie3 = Movie(id: UUID().uuidString, name: "Harry Potter 3", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"],year: 2006,rating: "TV-MA", cast:"yyy" , creator:"xxx",moreLikeThis: [], trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )


let exampleMovie4 = Movie(id: UUID().uuidString, name: "Harry Potter 4", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2002,rating: "TV-MA", cast:"yyy" , creator:"xxx",moreLikeThis: [], trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )


let exampleMovie5 = Movie(id: UUID().uuidString, name: "Harry Potter 5", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2003,rating: "TV-MA",cast:"yyy" , creator:"xxx", moreLikeThis: [], trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Harry Potter 6", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2009,rating: "TV-MA", cast:"yyy" , creator:"xxx",moreLikeThis: [], trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )
let exampleMovie7 = Movie(id: UUID().uuidString, name: "Harry Potter 7", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"],year: 2013,rating: "TV-MA",cast:"yyy" , creator:"xxx", moreLikeThis: [], trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )
let exampleMovie8 = Movie(id: UUID().uuidString, name: "Harry Potter 8", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2015,rating: "TV-MA",cast:"yyy" , creator:"xxx", moreLikeThis: [], trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )

var moreLikeThisMovies : [Movie] {
    return [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7, exampleMovie8].shuffled()}

let exampleMovies : [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7, exampleMovie8]

let exampleEpisodeInfo = CurrentEpisodeInfo(episodeName: "Harry Potter and the Goblet of Fire", season: 2, number: 4, description: "In the quaint town of Maplewood, life flows in a predictable rhythm—until a mysterious stranger arrives one foggy morning. Clad in a weathered coat and carrying an old leather satchel, the newcomer captures the attention of the townsfolk, stirring both curiosity and suspicion.")
let exampleEpisodeInfo2 = CurrentEpisodeInfo(episodeName: "Harry Potter", season: 1, number: 5, description: "In the quaint town of Maplewood, life flows in a predictable rhythm—until a mysterious stranger arrives one foggy morning. Clad in a weathered coat and carrying an old leather satchel, the newcomer captures the attention of the townsfolk, stirring both curiosity and suspicion.")

let exampleVideoURL = URL(string:"https://www.imdb.com/video/vi2007761177/?playlistId=tt0304141&ref_=tt_ov_vi")
let exampleImageURL = "https://ia.tmgrup.com.tr/fed1ad/0/0/0/0/525/394?u=http://i.tmgrup.com.tr/es/2018/05/05/tentene-rekor-fiyat-1525508552137.jpg"

let episode1 = Episode(
    name: "Harry Potter and the Goblet of Fire",
    season: 1,
    context: "In the quaint town of Maplewood, life flows in a predictable rhythm—until a mysterious stranger arrives one foggy morning. Clad in a weathered coat and carrying an old leather satchel, the newcomer captures the attention of the townsfolk, stirring both curiosity and suspicion.",
    time:96,
    thumbnailImageString: exampleImageURL,
    episodeNumber: 1,
    videoURL: exampleVideoURL!)
let episode2 = Episode(
    name: "Harry Potter and the Goblet of Fire",
    season: 2,
    context: "In the quaint town of Maplewood, life flows in a predictable rhythm—until a mysterious stranger arrives one foggy morning. Clad in a weathered coat and carrying an old leather satchel, the newcomer captures the attention of the townsfolk, stirring both curiosity and suspicion.",
    time:96,
    thumbnailImageString: exampleImageURL,
    episodeNumber: 1,
    videoURL: exampleVideoURL!)
let episode3 = Episode(
    name: "Harry Potter and the Goblet of Fire",
    season: 2,
    context: "In the quaint town of Maplewood, life flows in a predictable rhythm—until a mysterious stranger arrives one foggy morning. Clad in a weathered coat and carrying an old leather satchel, the newcomer captures the attention of the townsfolk, stirring both curiosity and suspicion.",
    time:96,
    thumbnailImageString: exampleImageURL,
    episodeNumber: 1,
    videoURL: exampleVideoURL!)

let allExampleEpisodes = [episode1, episode2, episode3]

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient( gradient: Gradient(
         colors:[Color.black.opacity(0.95), Color.black.opacity(0.0)]),
         startPoint: .bottom,
         endPoint: .top)
        
}
