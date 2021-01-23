//
//  ImagePage.swift
//  SwiftUIDemo
//
//  Created by mac on 2020/11/30.
//

import SwiftUI

struct ImagePage: View {
    let range = 1..<6
    var body: some View {
        VStack {
            ForEach(range) { index in
                Image("icon")
                    .resizable()
                    .frame(width: CGFloat(30*index), height:CGFloat(30*index), alignment: .bottom)
                    .onTapGesture {
                        print("tap\(index)")
                    }
            }
        }.navigationTitle(Text("Image"))
    }
}

struct ImagePage_Previews: PreviewProvider {
    static var previews: some View {
        ImagePage()
    }
}
