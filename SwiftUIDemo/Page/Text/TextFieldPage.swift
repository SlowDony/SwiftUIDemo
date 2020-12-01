//
//  TextFieldPage.swift
//  SwiftUIDemo
//
//  Created by mac on 2020/11/30.
//

import SwiftUI

struct TextFieldPage: View {
    
    @State var name: String = ""
    @State var password: String = ""
    let nameText = Text("请输入昵称")
                        .foregroundColor(.secondary)
                        .font(.system(size: 16))
    
    let pwdText = Text("请输入密码")
                        .foregroundColor(.secondary)
                        .font(.system(size: 16))
    
    
    
    var body: some View {
        VStack (spacing:15){
            HStack{
                Text("昵称:").foregroundColor(.secondary)
                TextField("请输入昵称", text:
                            $name) { (changed) in
                    print("onEditingChanged:\(changed):\(self.name)")
                } onCommit: {
                    print("用户输入:\(self.name)")
                }
            }
            .padding(10)
            .frame(height:50)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            
            HStack{
                Text("密码:").foregroundColor(.secondary)
                SecureField("", text: $password) {
                    print("password:\(self.password)")
                    self.endEditing(true)
                }
            }
            .padding(10)
            .frame(height:50)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        }.offset(y:-150)
        .navigationBarTitle(Text("TextField"))
    }
    
    private func endEditing(_ force:Bool){
        MainApp.keyWindow?.endEditing(force)
    }
}

struct TextFieldPage_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldPage()
    }
}
