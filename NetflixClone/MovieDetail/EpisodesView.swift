//
//  EpisodesView.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 18.10.2024.
//

import SwiftUI

struct EpisodesView: View {
    var episodes: [Episode]
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button(action:{},
                       label: {
                    Group {
                        Text("Season 1")
                    }
                })
                
                ScrollView {
                    
                    ForEach(episodes, id:\.id){ episode in
                        VStack{
                            HStack{
                                Button(action: {}) {
                                    
                                }
                                Spacer()
                                Button(action: {}, label: {
                                    
                                })
                            }
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    EpisodesView(episodes: [episode1,episode2,episode3])
}
