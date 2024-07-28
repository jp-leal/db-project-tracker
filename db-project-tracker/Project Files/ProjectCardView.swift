//
//  ProjectCardView.swift
//  db-project-tracker
//
//  Created by Joao Leal on 7/27/24.
//

import SwiftUI

struct ProjectCardView: View {
    
    var project: Project
    
    var body: some View {
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 15)
                .opacity(0.7)
                .shadow(radius: 5, x: 0, y: 4)
            VStack(alignment: .leading, spacing: 10) {
                Text(project.name)
                    .font(.bigHeadline)
                    .foregroundStyle(.white)
                HStack(alignment: .center, spacing: 13){
                   Spacer()
                    StatBubbleView(title: "Hours", stat: "290", startColor: Color("Navy"), endColor: Color("TealTeal"))
                    StatBubbleView(title: "Sessions", stat: "90", startColor: Color("Deep Purple"), endColor: Color("Lime"))
                    StatBubbleView(title: "Updates", stat: "290", startColor: Color("GraySky"), endColor: Color("Navy"))
                    StatBubbleView(title: "Wins", stat: "290", startColor: Color("YellowSun"), endColor: Color("Navy"))
                    Spacer()
                }
                Text("My Current focus is...")
                    .font(.featuredText)
                    .foregroundStyle(.gray)
                Text("My Current focus is...")
                    .font(.featuredText)
                    .foregroundStyle(.gray)
                    .bold()
            }
            .padding()
        }
    }
}

#Preview {
    ProjectCardView(project: Project())
}
