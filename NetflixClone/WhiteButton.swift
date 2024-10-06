//
//  WhiteButton.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 6.10.2024.
//

import SwiftUI

struct WhiteButton: View {
    var text: String
    var imageName: String
    var action: () -> Void
    
    var body: some View {
        
        Button(action: action ,
               label: {
                HStack {
                    Spacer()
                    Image(systemName: imageName)
                        .font(.headline)
                    Text(text)
                        .bold()
                        .font(.system(size: 16))
                    Spacer()
                }
                .padding(.vertical, 6)
                .foregroundColor(.black)
                .background(Color.white)
                
                .cornerRadius(3.0)
                }
           )
    }
}

#Preview {
    ZStack{
        Color.black
        WhiteButton(text: "Play", imageName: "play.fill", action: {})
    }
    
}
