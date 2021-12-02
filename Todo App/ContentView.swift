//
//  ContentView.swift
//  Todo App
//
//  Created by Harmony Moyo on 30/11/2021.
//

import SwiftUI

func rgb(_ r: Double, _ g: Double, _ b: Double, _ opacity: Double = 1.0) -> Color
{
    return Color.init(red: r / 255, green: g / 255, blue: b / 255, opacity: opacity)
}

extension Color {
    static var primary_purple = rgb(167,159,202)
}

struct ContentView: View {
    var name = "Harmony"
    //read schedules from API (This will be built in ES6 Nodejs)
    var schedules = [
        Schedule(category: "Coding", title: "Program jni C++", start: "1PM", end: "3PM")
    ]
    var body: some View {
        VStack(alignment: .leading){
            ScrollView{
                HStack{
                    Text("Hello \(name)")
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                        .padding()
                }
                
                
                HStack{
                    CardView()
                        .scaledToFill()
                        
                }
               
                
                HStack{
                    Timeline(schedules: schedules)
                        .padding()
                }
            }
            
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
