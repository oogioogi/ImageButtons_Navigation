//
//  ContentView.swift
//  ImageButtons
//
//  Created by 이용석 on 2021/06/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack{
                Image("바다-unsplash")
                    .resizable()
                    .offset(x: 0, y: -100)
                
                CircleImage()
                    .offset(y: -250)
                HStack{
                    NavigationLink(
                        destination: myWebPage( url: "https://www.youtube.com/channel/UC3h9QhRUuzhBwvFRjFcXO6w"),
                        label: {
                            Text("조선소 전기쟁이!")
                        })
                }
                .offset(y: -230)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
