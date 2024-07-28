//
//  AddProjectView.swift
//  db-project-tracker
//
//  Created by Joao Leal on 7/27/24.
//

import SwiftUI

struct AddProjectView: View {
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
                        //
                    }.buttonStyle(.borderedProminent)
                        .tint(.blue)
                }
            }
        }
    }
}

