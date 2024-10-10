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
    var rating: String
    var promotionHeadline: String?
    var numberOfSeasons: Int?
    var cast: String
    var creator: String
    
    var episode:[Episode]?
    
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
    //Personalizing
    
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodeInfo : CurrentEpisodeInfo
    
    var episodeInfoDisplay: String{
        
        if let current = currentEpisode{
            return "S\(current.episodeName):E\(current.season) \(current.number)"
        }else{
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.number) \(defaultEpisodeInfo.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String{
        if let current = currentEpisode{
            return current.description
        }else{
            return defaultEpisodeInfo.description
        }
    }
    
}


struct CurrentEpisodeInfo: Hashable, Equatable{
    var episodeName: String
    var season: Int
    var number: Int
    var description: String
    
}
