//
//  HomeVM.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 2.10.2024.
//

import Foundation

class HomeVM : ObservableObject{
    //category list
    @Published var movies : [String: [Movie]] = [:]
    
    public var allCategories : [String] {
        movies.keys.map({String($0)})
    }
    public func getMovie(forCat cat : String)-> [Movie]{
        return movies[cat] ?? []
    }
    init(){
        fetchMovies()
    }
    func fetchMovies(){
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up"] = exampleMovies
        movies["Fantastic"] = exampleMovies
    }
}
