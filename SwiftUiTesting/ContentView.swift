//
//  ContentView.swift
//  SwiftUiTesting
//
//  Created by Rashid on 29/03/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [isNight ?.black:.blue,   isNight ? .gray:Color("bg")]), startPoint: .top, endPoint: .bottomTrailing).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Text("Cupertino CA").foregroundColor(.white).font(.largeTitle)
                VStack(spacing: 0){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("73%").font(.largeTitle).foregroundColor(.white)
                }.padding(.bottom,40)
                HStack( spacing:15){
                    ExtractedView(name: "THU", temp: 8)
                    ExtractedView(name: "WED", temp: 88)
                    ExtractedView(name: "TUE", temp:99)
                    ExtractedView(name: "FRI", temp: 00)
                    ExtractedView(name: "SAT", temp: 77)
                    ExtractedView(name: "SUN", temp: 33)
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                } label: {
                    Text("Click The Button").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(width: 300, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color.white).cornerRadius(10)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    let name:String
    let temp:Int
    var body: some View {
        VStack{
            Text(name).font(.title2).foregroundColor(.white)
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("\(temp)%").font(.title2).foregroundColor(.white)
        }
    }
}
