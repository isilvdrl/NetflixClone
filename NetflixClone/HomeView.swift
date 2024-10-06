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
                    
                    TopMoviesPreview(movie: exampleMovie1)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                    
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
