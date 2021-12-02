//
//  CardView.swift
//  Todo App
//
//  Created by Harmony on 01/12/2021.
//

import SwiftUI

struct CardView: View {
    var category = "Category"
    var title = "Card Title"
    var schedule_start = "9 AM"
    var schedule_end = "1 PM"
    var body: some View {
        VStack(alignment: .leading){
            Text(category)
                .font(.system(size: 12))
                .foregroundColor(rgb(100,78,231))
                .padding(.bottom, 1)
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(rgb(61,64,112))
                .padding(.bottom, 1)
            Text("\(schedule_start) - \(schedule_end)")
                .font(.system(size: 12))
                .foregroundColor(rgb(181,184,212)) //rgb(212,216,233)
        }
        .padding()
        .background(
            Rectangle()
                .foregroundColor(.white)
            .cornerRadius(10)
            .shadow(color: rgb(234,240,245), radius: 10)
        )
        .scaledToFit()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
