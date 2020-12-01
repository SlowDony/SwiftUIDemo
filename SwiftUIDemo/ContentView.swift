//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by mac on 2020/11/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            List {
                Section(header: Text("Animation")) {
                    NavigationLink(destination: LotteryView()){
                        PageRow(title: "LotteryView", subTitle: "Rotation Lottery")
                    }
                }
                
                Section(header: Text("基本控件")) {
                    NavigationLink(destination: TextPage()){
                        PageRow(title: "Text", subTitle: "显示一行或多行只读文本")
                    }
                    NavigationLink(destination: TextFieldPage()){
                        PageRow(title: "TextField", subTitle: "显示可编辑文本界面的输入控件")
                    }
                    NavigationLink(destination: TextFieldPage()){
                        PageRow(title: "SecureField", subTitle: "安全输入私密文本的输入控件")
                    }
                    NavigationLink(destination: ImagePage()){
                        PageRow(title: "ImagePage", subTitle: "以下展示本地图片")
                    }
                    NavigationLink(destination: WebImagePage()){
                        PageRow(title: "WebImagePage", subTitle: "下载网络图片并展示")
                    }
                }
                
                Section(header: Text("按钮")) {
                    NavigationLink(destination: ButtonPage()){
                        PageRow(title: "Button", subTitle: "触发时执行操作的按钮")
                    }
                    NavigationLink(destination: NavigationButtonPage()){
                        PageRow(title: "NavigationButton", subTitle: "按下时触发导航跳转的按钮")
                    }
                    NavigationLink(destination: Text("I'm Text")){
                        PageRow(title: "PresentationButton", subTitle: "触发时显示内容的按钮控件")
                    }
                    NavigationLink(destination: EditButtonPage()){
                        PageRow(title: "EditButton", subTitle: "用于切换当前编辑模式的按钮")
                    }
                }
                
                Section(header: Text("选择器")) {
                    NavigationLink(destination: PickerPage()){
                        PageRow(title: "Picker", subTitle: "可自定义数据源 picker 选择器")
                    }
                    NavigationLink(destination: DatePickerPage()){
                        PageRow(title: "DatePicker", subTitle: "时间展示与选择")
                    }
                    NavigationLink(destination: TogglePage()){
                        PageRow(title: "Toggle", subTitle: "开关选择器")
                    }
                    NavigationLink(destination: SliderPage()){
                        PageRow(title: "Slider", subTitle: "用以设置指定范围内的值")
                    }
                    NavigationLink(destination: StepperPage()){
                        PageRow(title: "Stepper", subTitle: "用以增加或减少的值")
                    }
                    
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Example"),displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                print("Tap")
            }, label: {
                Text("Button").foregroundColor(.blue)
            }))
        }
//        VStack{
//            Text("Hello, world!")
//                .padding()
//                .foregroundColor(.red)
//                .font(.system(.largeTitle))
//    //            .italic()
//                .shadow(color: .black, radius: 1, x: 0, y: 2)
//
//            Text("github")
//                .underline()
//                .font(.system(size: 16, design: .serif)
//        }
//
//
//
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
