//
//  EpisodesView.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 18.10.2024.
//

import SwiftUI

struct EpisodesView: View {
    var episodes: [Episode]
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeasons season:Int) -> [Episode]{
        return episodes.filter({$0.season == season})
    }
    
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button(action:{
                    showSeasonPicker = true
                },
                       label: {
                    Group {
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                })
                
                
                ScrollView {
                    
                    ForEach(getEpisodes(forSeasons: selectedSeason)){ episode in
                        Text("test")
                       
                    }
                    .foregroundColor(.white)
                    
                }
            }
        }
    }
}

#Preview {
    EpisodesView(episodes: allExampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
}
