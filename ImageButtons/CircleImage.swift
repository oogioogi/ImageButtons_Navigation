//
//  CircleImage.swift
//  ImageButtons
//
//  Created by 이용석 on 2021/06/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("mathilde-unsplash")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
            .shadow(color: .pink, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: 10)
            .overlay(Circle().stroke(Color.red, lineWidth: 5.0), alignment: .center)
            .overlay(Circle().opacity(0.2))
            .overlay(Text("her...")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.largeTitle)
            )
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
