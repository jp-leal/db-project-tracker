//
//  Project.swift
//  db-project-tracker
//
//  Created by Joao Leal on 7/27/24.
//

import Foundation
import SwiftData

@Model
class Project: Identifiable {
    @Attribute(.unique) var id: String
    var name = ""
    var startDate = Date()
    var focus = ""
    @Relationship(deleteRule: .cascade, inverse: \ProjectUpdate.project)
    var update: [ProjectUpdate] = [ProjectUpdate]()
    init() {
        id = UUID().uuidString
    }
}
