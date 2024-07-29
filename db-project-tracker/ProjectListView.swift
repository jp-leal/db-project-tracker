//
//  ContentView.swift
//  db-project-tracker
//
//  Created by Joao Leal on 7/27/24.
//

import SwiftUI
import SwiftData

struct ProjectListView: View {
    @Query private var projects: [Project]
    @State private var newProject: Project?
    var body: some View {
        NavigationStack{
        ZStack{
            LinearGradient(colors: [Color("Deep Purple"), Color("Washed Blues")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                Text("Projects")
                    .font(Font.screenHeading)
                    .foregroundStyle(.white)
                ScrollView(showsIndicators: false){
                    VStack(alignment: .leading, spacing: 26){
                        
                        ForEach(projects){ p in
                            NavigationLink{
                                ProjectDetailView(project: p)
                                
                            } label: {
                                ProjectCardView(project: p)
                            }.buttonStyle(.plain)
                         }
                    }
                    
                }
                
            }.padding()
            
            VStack{
                Spacer()
                HStack{
                    
                    Button{
                        self.newProject = Project()
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
        }}
        .sheet(item: $newProject) { project in
            AddProjectView(project: project)
                .presentationDetents([.fraction(0.2)])
        }
}
}
// Blue, Creme, Deep Purple, Gray, LightBlue, LightGray, Lime, Navy, Teal, Washed Blue, Yellow
#Preview {
    ProjectListView()
}
