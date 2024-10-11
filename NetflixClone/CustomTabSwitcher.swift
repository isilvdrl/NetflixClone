//
//  CustomTabSwitcher.swift
//  NetflixClone
//
//  Created by IŞIL VARDARLI on 11.10.2024.
//

import SwiftUI

struct CustomTabSwitcher: View {
    var tabs: [CustomTab]
    func tabWidth(tab: CustomTab) -> CGFloat {
        let tabWidth = tab.rawValue.count * 10
        return CGFloat(tabWidth)
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing: 5) {
                    ForEach(tabs,id:\.self){ tab in
                        VStack {
                            Rectangle()
                                .frame(width: tabWidth(tab: tab), height: 6)
                                .foregroundColor(.red)
                            Button(
                                action: {},
                                label: {Text(tab.rawValue)
                                        .font(.system(size: 16))
                                        .bold()
                                        }
                                    
                            )
                        }
                    }.padding(.leading, 15)
                    
                }
            }.foregroundColor(.white)
            
            Text("Selected view").foregroundColor(.white)
        }
        
        

    }
}
enum CustomTab:String{
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}
#Preview {
    ZStack{
        Color.black
            .edgesIgnoringSafeArea(.all)
        CustomTabSwitcher(tabs: [.episodes,.trailers,.more])
    }
}
