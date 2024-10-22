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
            VStack(spacing: 14) {
                HStack {
                    Button(action:{
                        showSeasonPicker = true
                    },
                           label: {
                        Group {
                            Text("Season \(selectedSeason)")
                            Image(systemName: "chevron.down")
                        }.font(.system(size: 16))
                    })
                    .foregroundColor(.white)
                   
                    Spacer()
                    
                }
                
                
                ScrollView {
                    
                    ForEach(getEpisodes(forSeasons: selectedSeason)){ episode in
                        
                        VStack(alignment: .leading){
                            
                            HStack{
                                VideoPreviewImage(imageURL: episode.thumbnailImageURL, videoURL: episode.videoURL)
                                    .frame(width: 120,height: 70)
                                    
                                VStack(alignment: .leading) {
                                    Text("\(episode.episodeNumber). \(episode.name)")
                                        .font(.system(size: 16))
                                    Text("\(episode.time)m")
                                        .font(.system(size: 12))
                                        .foregroundColor(.gray)
                                }
                                
                                Spacer()
                                
                                Button(action: {}, label: {
                                    Image(systemName: "arrow.down.to.line.alt")
                                        .font(.system(size: 20))
                                })
                            }
                            .padding(.bottom, 20)
                            
                            Text(episode.context)
                                .font(.system(size:13))
                                .lineLimit(3)
                        }.padding(.bottom, 20)
                        
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal,20)
                    
                }
            }
        }
    }
}

#Preview {
    EpisodesView(episodes: allExampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
}
