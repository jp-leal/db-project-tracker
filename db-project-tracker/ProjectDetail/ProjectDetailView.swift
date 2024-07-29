//
//  ProjectDetailView.swift
//  db-project-tracker
//
//  Created by Joao Leal on 7/28/24.
//

import SwiftUI

struct ProjectDetailView: View {
    
    @Environment(\.dismiss) private var dismiss
    var project: Project
    var body: some View {
        Text(project.name)
            .navigationBarBackButtonHidden(true)
        Button("Back") {
            dismiss()
        }
    }
}

#Preview {
    ProjectDetailView(project: Project())
}
