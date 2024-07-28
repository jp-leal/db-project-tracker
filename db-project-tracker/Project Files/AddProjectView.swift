//
//  AddProjectView.swift
//  db-project-tracker
//
//  Created by Joao Leal on 7/27/24.
//

import SwiftUI
import SwiftData

struct AddProjectView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    
    var project: Project
    @State var projectName: String = ""
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Text("New Project")
                    .font(.bigHeadline)
                    .foregroundStyle(.white)
                HStack{
                    TextField("Project Name", text: $projectName)
                        .textFieldStyle(.roundedBorder)
                    Button("Save") {
                        project.name = projectName
                        context.insert(project)
                        dismiss()
                    }.buttonStyle(.borderedProminent)
                        .tint(.blue)
                }
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top)
        }
    }
}

