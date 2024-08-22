//
//  Projects.swift
//  03-01-Lebenslauf
//
//  Created by Lisis Ruschel on 22.08.24.
//

import Foundation
struct Project: Identifiable {
    let id = UUID()
    let title: String
    let url: URL
    let technologies: [String]
    let description: String
    let status: ProjectStatus
}

enum ProjectStatus: String {
    case inProgress = "In Progress"
    case deployed = "Deployed"
    case completed = "Completed"
}
