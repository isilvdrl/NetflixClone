//
//  GlobalHelpers.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 2.10.2024.
//

import Foundation
import SwiftUI

let exampleTrailerUrl = URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")!
let exampleTrailerImageURL1 = URL(string: "https://static1.srcdn.com/wordpress/wp-content/uploads/ONCE-UPON-A-TIME-Season-2-Episode-16-assemble.jpg")!
let exampleTrailerImageURL2 = URL(string: "https://ladygeekgirl.wordpress.com/wp-content/uploads/2013/05/ouat-season-2.jpg")!
let exampleTrailerImageURL3 = URL(string: "https://ew.com/thmb/Mx29iRzEkM27v-dDJyPecSu-Fnw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/147142_2145-2000-a78c7b74279643f09517cda4d66bfba3.jpg")!

let trailer1 = Trailer(name: "Official Trailer", thumbnailImageUrl: exampleTrailerImageURL1, videoUrl: exampleTrailerUrl)
let trailer2 = Trailer(name: "Teaser Trailer", thumbnailImageUrl: exampleTrailerImageURL2, videoUrl: exampleTrailerUrl)
let trailer3 = Trailer(name: "Final Trailer", thumbnailImageUrl: exampleTrailerImageURL3, videoUrl: exampleTrailerUrl)


let exampleTrailers = [trailer1,trailer2,trailer3]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "Harry Potter and the Sorcerer's Stone",
    thumbnailURL: URL(string: "https://play-lh.googleusercontent.com/SF5BMT_IsoF7GBl4USjTr4CrNvXkFClA26qvzyKX6chRdGaXr6JDvnTVqO3wv2EF161VC2jD80YTedD-6HI")!,
    categories: ["Fantasy", "Adventure", "Family"],
    year: 2001,
    rating: "PG",
    promotionHeadline: "Experience the Magic Again!",
    numberOfSeasons: 0, 
    cast: "Daniel Radcliffe, Emma Watson, Rupert Grint, Richard Harris",
    creator: "Chris Columbus",
    moreLikeThis: [],
    trailers: exampleTrailers,
    defaultEpisodeInfo: exampleEpisodeInfo
)

let exampleMovie8 = Movie(
    id: UUID().uuidString,
    name: "Once Upon a Time",
    thumbnailURL: URL(string: "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p9264817_b_v13_ab.jpg")!,
    categories: ["Fantasy", "Drama", "Adventure"],
    year: 2012,
    rating: "TV-PG",
    promotionHeadline: "Coming Soon!",
    numberOfSeasons: 5, 
    cast: "Jennifer Morrison, Lana Parrilla, Josh Dallas, Jared Gilmore",
    creator: "Edward Kitsis, Adam Horowitz",
    moreLikeThis: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    episodes: [episode1,episode2 , episode3, episode4],
    trailers: exampleTrailers, // Fragmanlar buraya eklenebilir
    defaultEpisodeInfo: CurrentEpisodeInfo(episodeName: episode1.name, season: 1, number: 1, description: episode1.context) // Varsayılan bölüm bilgileri
)

let exampleMovie2 = Movie(id: UUID().uuidString, name: "Harry Potter 2", thumbnailURL: URL(string: "https://play-lh.googleusercontent.com/dtTRxPttZzQqjFmClle6E22-o7L15mmTNBmXyWT3rgXVhdEZSwUbC8Fvksuw2VrgMJ5wx5OMYie9Drs-pQA=w240-h480-rw")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2010,rating: "TV-MA", cast:"yyy" , creator:"xxx",moreLikeThis: [], trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )


let exampleMovie3 = Movie(id: UUID().uuidString, name: "Harry Potter 3", thumbnailURL: URL(string: "https://musicimage.xboxlive.com/catalog/video.movie.8D6KGWZL5PMR/image?locale=en-au&mode=crop&purposes=BoxArt&q=90&h=300&w=200&format=jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"],year: 2006,rating: "TV-MA", cast:"yyy" , creator:"xxx",moreLikeThis: [], trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )


let exampleMovie4 = Movie(id: UUID().uuidString, name: "Harry Potter 4", thumbnailURL: URL(string: "https://www.justwatch.com/images/poster/264902120/s718/harry-potter-ve-ates-kadehi.jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2002,rating: "TV-MA", cast:"yyy" , creator:"xxx",moreLikeThis: [exampleMovie2, exampleMovie3, exampleMovie5, exampleMovie6, exampleMovie7], trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )


let exampleMovie5 = Movie(id: UUID().uuidString, name: "Harry Potter 5", thumbnailURL: URL(string: "https://media.paribucineverse.com/342//Files/POSTER/harry5.png")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2003,rating: "TV-MA",cast:"yyy" , creator:"xxx", moreLikeThis: [], trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Harry Potter 6", thumbnailURL: URL(string: "https://play-lh.googleusercontent.com/aOpvc31O2w2SLyyoyCviPHdhu2rmLk_0LRUo4a5E1ivtpIOqPTrsDu4MXfRS2wfZsFgKEGQltumEFaTRb9c")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"] ,year: 2009,rating: "TV-MA", cast:"yyy" , creator:"xxx",moreLikeThis: [], trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )
let exampleMovie7 = Movie(id: UUID().uuidString, name: "Harry Potter 7", thumbnailURL: URL(string: "https://www.justwatch.com/images/poster/264900069/s718/harry-potter-ve-olum-yadigarlari-bolum-1.jpg")!, categories: ["Dystopian","Exciting","Fantasy","Horror","Sci-Fi"],year: 2013,rating: "TV-MA",cast:"yyy" , creator:"xxx", moreLikeThis: [], trailers: exampleTrailers, defaultEpisodeInfo: exampleEpisodeInfo )


var moreLikeThisMovies : [Movie] {
    return [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7].shuffled()}

let exampleMovies : [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7]

let exampleEpisodeInfo = CurrentEpisodeInfo(episodeName: "Harry Potter and the Goblet of Fire", season: 2, number: 4, description: "In the quaint town of Maplewood, life flows in a predictable rhythm—until a mysterious stranger arrives one foggy morning. Clad in a weathered coat and carrying an old leather satchel, the newcomer captures the attention of the townsfolk, stirring both curiosity and suspicion.")
let exampleEpisodeInfo2 = CurrentEpisodeInfo(episodeName: "Harry Potter", season: 1, number: 5, description: "In the quaint town of Maplewood, life flows in a predictable rhythm—until a mysterious stranger arrives one foggy morning. Clad in a weathered coat and carrying an old leather satchel, the newcomer captures the attention of the townsfolk, stirring both curiosity and suspicion.")

let exampleVideoURL = URL(string:"https://www.imdb.com/video/vi2007761177/?playlistId=tt0304141&ref_=tt_ov_vi")
let exampleImageURL = "https://ia.tmgrup.com.tr/fed1ad/0/0/0/0/525/394?u=http://i.tmgrup.com.tr/es/2018/05/05/tentene-rekor-fiyat-1525508552137.jpg"


let exampleImageURL1 = "https://www.hollywoodreporter.com/wp-content/uploads/2015/12/141391_9924.jpg?w=1024"
let exampleImageURL2 = "https://ew.com/thmb/u05V1YyoLlz_nMhuOrIFUYuPkew=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/once-upon-a-time-27eee5ee9b0c4b6db0b9517dd93f5668.jpg"
let exampleImageURL3 = "https://hips.hearstapps.com/digitalspyuk.cdnds.net/17/11/1489662447-145288-0706.jpg?resize=980:*"
let exampleImageURL4 = "https://www.hollywoodreporter.com/wp-content/uploads/2015/12/141391_9924.jpg?w=1024"

let episode1 = Episode(
    name: "The Town",
    season: 1,
    context: "In the quaint town of Maplewood, life flows in a predictable rhythm—until a mysterious stranger arrives one foggy morning...",
    time: 96,
    thumbnailImageString: exampleImageURL1,
    episodeNumber: 1,
    videoURL: exampleVideoURL!)

let episode2 = Episode(
    name: "The Enchanted Forest",
    season: 1,
    context: "As the leaves turn golden, the town prepares for the annual harvest festival...",
    time: 85,
    thumbnailImageString: exampleImageURL2,
    episodeNumber: 2,
    videoURL: exampleVideoURL!)

let episode3 = Episode(
    name: "Secrets of the Past",
    season: 1,
    context: "With the festival behind them, the townsfolk discover an old diary hidden in the library...",
    time: 90,
    thumbnailImageString: exampleImageURL3,
    episodeNumber: 3,
    videoURL: exampleVideoURL!)

let episode4 = Episode(
    name: "Whispers in the Wind",
    season: 1,
    context: "A sudden storm uncovers an ancient artifact in the town square...",
    time: 92,
    thumbnailImageString: exampleImageURL4,
    episodeNumber: 4,
    videoURL: exampleVideoURL!)



let allExampleEpisodes = [episode1, episode2, episode3, episode4]





extension LinearGradient {
    static let blackOpacityGradient = LinearGradient( gradient: Gradient(
         colors:[Color.black.opacity(0.95), Color.black.opacity(0.0)]),
         startPoint: .bottom,
         endPoint: .top)
        
}
