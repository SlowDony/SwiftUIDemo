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
            ///普通文字
            Text("SwiftUI")
            ///带样式的文字
            Text("SwiftUI")
                .foregroundColor(.orange)
                .bold()
                .font(.system(.largeTitle))
                .fontWeight(.medium)
                .italic()
                .shadow(color: .black, radius: 1, x: 0, y: 2)
            ///链接
            Text(github)
                .underline(true,color: Color.gray)
                .font(.system(size: 16, design: .serif))
                .onTapGesture {
                    print(github)
                }
            ///横向布局的文字
            HStack {
                Text("Text")
                Text("TextFiled").bold()
                Text("SecureField").foregroundColor(.orange)
            }
            ///多行
            Text("Views and controls are the visual building blocks of your app’s user interface. Use them to present your app’s content onscreen.").lineLimit(2)
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
