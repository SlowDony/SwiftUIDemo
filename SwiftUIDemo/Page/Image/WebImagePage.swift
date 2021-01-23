//
//  WebImagePage.swift
//  SwiftUIDemo
//
//  Created by mac on 2020/11/30.
//

import SwiftUI

struct WebImagePage: View {
    
    @State private var image: UIImage? = nil
    let placeholderImage = UIImage(named: "icon")
    var body: some View {
        Image(uiImage: (self.image ?? placeholderImage)!)
            .resizable()
            .onAppear(perform:downLoadWebImage)
            .frame(width: 100, height: 100, alignment: .center)
            .onTapGesture(count: 1, perform: {
                print("tap")
            })
            .navigationTitle(Text("WebImagePage"))
    }
    
    func downLoadWebImage(){
        guard let url = URL(string: "https://picsum.photos/50/50?i=30") else {
            print("Invalid URL")
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data, let image = UIImage(data: data) {
                self.image = image
            }else{
                print("error:\(String(describing: error))")
            }
        }.resume()
    }
}

struct WebImagePage_Previews: PreviewProvider {
    static var previews: some View {
        WebImagePage()
    }
}
