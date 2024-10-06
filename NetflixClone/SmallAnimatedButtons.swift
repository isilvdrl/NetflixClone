//
//  SmallAnimatedButtons.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 4.10.2024.
//

import SwiftUI

struct SmallAnimatedButtons: View {
    var text: String
    var isOnImage: String
    var isOffImage: String
    var isOn: Bool
    
    var imageName : String {
        if isOn {
            return isOnImage
        } else {
            return isOffImage
        }
    }
    var action: () -> Void
    
    var body: some View {
        Button(action: {
                action()
                },
               label:{
                VStack{
                    Image(systemName: imageName)
                    Text(text)
                        .font(.system(size: 14))
                        .bold()
                    }.foregroundColor(.white)
                }
            )
    }
}

#Preview {
    
    ZStack {
        Color.black
        SmallAnimatedButtons(text: "My list", isOnImage: "checkmark", isOffImage: "plus", isOn: false ){print("Tapped")}
    }
}
