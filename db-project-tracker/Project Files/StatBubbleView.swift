//
//  StatBubbleView.swift
//  db-project-tracker
//
//  Created by Joao Leal on 7/27/24.
//

import SwiftUI

struct StatBubbleView: View {
    var title: String
    var stat: String
    var startColor: Color
    var endColor: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(LinearGradient(colors: [Color(startColor), Color(endColor)], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
            VStack{
                Text(title)
                    .font(.captionText)
                Text(stat)
                    .font(.featuredNumber)
                    .bold()
            }
            .foregroundStyle(.white)
        }
        .frame(width: 60, height: 40)
    }
}

#Preview {
    StatBubbleView(title: "Hours", stat: "290", startColor: Color("Navy"), endColor: Color("Teal"))
}
