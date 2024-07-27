//
//  db_project_trackerApp.swift
//  db-project-tracker
//
//  Created by Joao Leal on 7/27/24.
//

import SwiftUI
import SwiftData

@main
struct DBProjectTracker: App {
    var body: some Scene {
        WindowGroup {
            ProjectListView()
        }
        .modelContainer(for: [Project.self, ProjectUpdate.self])
    }
}
