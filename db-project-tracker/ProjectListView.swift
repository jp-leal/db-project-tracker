//
//  ContentView.swift
//  db-project-tracker
//
//  Created by Joao Leal on 7/27/24.
//

import SwiftUI

struct ProjectListView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("Deep Purple"), Color("Washed Blue")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                Text("Projects")
                    .font(Font.screenHeading)
                    .foregroundStyle(.white)
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading, spacing: 26){
                      ProjectCardView()
                        ProjectCardView()
                        ProjectCardView()
                        
                    }
                    
                }
               
        }.padding()
            
            VStack{
                Spacer()
                HStack{
                    
            Button{
                //todo
            }label:{
                ZStack{
                    Circle()
                        .frame(width: 65)
                        .foregroundStyle(.black)
                    Image("cross")
                }
                
            }
                    Spacer()
        }
            }.padding(.leading)
    }
}
}
// Blue, Creme, Deep Purple, Gray, LightBlue, LightGray, Lime, Navy, Teal, Washed Blue, Yellow
#Preview {
    ProjectListView()
}
