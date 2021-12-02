//
//  Timeline.swift
//  Todo App
//
//  Created by Harmony on 01/12/2021.
//

import SwiftUI

struct Schedule: Identifiable {
    var id = UUID()
    var category = "General"
    var title = "General Schedule"
    var start = "9 AM"
    var end = "12 PM"
}
struct Timeline: View {
    var schedules: [Schedule] = []
    var body: some View {
        ZStack {
            rgb(236,238,250).ignoresSafeArea()
            VStack(alignment: .trailing){
                HStack{
                    //The vertical timeline labels
                    VStack(spacing: 40){
                        ForEach(9..<19) {
                            index in
                            Text("\(index) \(index >= 12 ? "PM" : "AM")")
                                .font(.system(size: 12))
                                .foregroundColor(rgb(201,203,223))
                        }
                    }
                    .padding([.leading, .trailing], 10)
                    
                    //The timeline line
                    VStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 5, height: 45 * 12)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            VStack(spacing: 35) {
                                ForEach(0..<(schedules.count )){
                                    index in
//                                    if index > 13 {
//
//                                    }
                                    Circle()
                                        
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.white)
                                        .overlay(
                                            Circle()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(index % 2 == 0 ? .red : .green)
                                        )
                                        
                                }
                            }
                        }
                    }
                    
                    VStack{
                        ForEach(schedules) {
                            schedule in
                            CardView(category: schedule.category, title: schedule.title,
                                     schedule_start: schedule.start, schedule_end: schedule.end)
                                .scaledToFill()
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct Timeline_Previews: PreviewProvider {
    static var previews: some View {
        let schedule1 = Schedule(category: "Personal", title: "Practice stuff personally", start: "8 AM", end: "12PM")
        let schedule2  = Schedule(category: "Business", title: "Business stuff t be done", start: "1PM", end: "5PM")
        
        
        Timeline(schedules: [schedule1, schedule2])
    }
}
