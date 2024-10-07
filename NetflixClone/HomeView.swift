//
//  HomeView.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 2.10.2024.
//

import SwiftUI

struct HomeView: View {
    var vm: HomeVM = HomeVM()
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                //main Vstack
                LazyVStack {
                    
                    TopRowButtons()
                    
                    TopMoviesPreview(movie: exampleMovie1)
                            .frame(width: screen.width)
                            .padding(.top, -110)
                            .zIndex(-1)

                    
                    ForEach(vm.allCategories, id: \.self) {category in
                        VStack {
                            HStack{
                                
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal,showsIndicators: false){
                                LazyHStack{
                                    ForEach(vm.getMovie(forCat: category)){
                                        movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 150, height: 250)
                                            .padding(.horizontal,20)
                                    }
                                }
                            }
                            
                            
                        }
                    }
                }
            }
            
            }
        .foregroundColor(.white)
        }
    }


#Preview {
    HomeView()
}

struct TopRowButtons: View {
    var body: some View {
        HStack{
            Button(action: {}
                   , label: {
                Image("netflixLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:50)
            })
            
            Spacer()
            Button(action:{},
                   label:{
                Text("Tv Shows")
            })
            
            Spacer()
            Button(action: {},
                   label: {
                Text("Movies")
            })
            
            Spacer()
            Button(action: {},
                   label: {
                Text("My List")
            })
        }
        .padding(.leading, 10)
        .padding(.trailing,30)
        .background(Color.black)
    }
}
