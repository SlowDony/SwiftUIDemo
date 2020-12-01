//
//  Text.swift
//  SwiftUIDemo
//
//  Created by mac on 2020/11/27.
//

import SwiftUI

private let github = "https://github.com/SlowDony/SwiftUIDemo"
struct TextPage: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("SwiftUI")
            Text("SwiftUI")
                .foregroundColor(.orange)
                .bold()
                .font(.system(.largeTitle))
                .fontWeight(.medium)
                .italic()
                .shadow(color: .black, radius: 1, x: 0, y: 2)
            Text(github)
                .underline(true,color: Color.gray)
                .font(.system(size: 16, design: .serif))
                .onTapGesture {
                    print(github)
                }
            HStack {
                Text("Text")
                Text("TextFiled").bold()
                Text("SecureField").foregroundColor(.orange)
            }
        }
        .navigationBarTitle("Text")
//        Text( "TextPage")
    }
}

struct Text_Previews: PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
