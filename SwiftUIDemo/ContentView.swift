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
                        PageRow()
                    }
                }
                
                Section(header: Text("基本控件")) {
                    NavigationLink(destination: LotteryView()){
                        PageRow()
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
