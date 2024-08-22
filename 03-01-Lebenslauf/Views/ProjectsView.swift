//
//  ProjectsView.swift
//  03-01-Lebenslauf
//
//  Created by Lisis Ruschel on 22.08.24.
//

import SwiftUI

var projects: [Project] = [
    Project(
        title: "HomeSwap",
        url: URL(string: "https://example.com/homeswap")!,
        technologies: ["Kotlin", "Firebase", "REST API", "Figma"],
        description: "A social networking app for flat swapping.",
        status: .inProgress
    ),
    Project(
        title: "Queer4Queer",
        url: URL(string: "https://example.com/queer4queer")!,
        technologies: ["React", "MongoDB", "Mapbox API"],
        description: "Interactive map of queer locations in Berlin with user-generated content and filtering capabilities.",
        status: .deployed
    ),
    Project(
        title: "Filmaora",
        url: URL(string: "https://example.com/filmaora")!,
        technologies: ["React Native", "Tailwind CSS", "Expo", "REST API"],
        description: "A native app designed to search and bookmark movies using The Movie Database API.",
        status: .completed
    ),
    Project(
        title: "CandleStickManager",
        url: URL(string: "https://example.com/candlestickmanager")!,
        technologies: ["Kotlin", "Docker compose", "REST API"],
        description: "Backend service managing and transforming financial data for customized API endpoints.",
        status: .completed
    )
]

struct ProjectsView: View {
    
    var body: some View {
        ScrollView{
            Text("LATEST PROJECTS")
                .bold()
                .padding(.top, 100)
                .foregroundColor(.secondaryBlue)
                .font(.title3)
            
            VStack(alignment: .leading, spacing: 20) {
                
                ForEach(projects) { project in
                    ProjectItemView(project: project)
                }
            }
            .padding()
        }
    }
}

struct ProjectItemView: View {
    let project: Project
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Link(destination: project.url) {
                Text(project.title)
                    .font(.headline)
                    .foregroundColor(.blue)
            }
            
            if project.status == .inProgress {
                Text(project.status.rawValue)
                    .font(.subheadline)
                    .foregroundColor(.orange)
            }
            
            Text("Technologies: \(project.technologies.joined(separator: ", "))")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Text(project.description)
                .font(.body)
        }
    }
}
#Preview {
    ProjectsView()
}
