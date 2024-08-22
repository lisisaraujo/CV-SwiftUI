//
//  ExperienceView.swift
//  03-01-Lebenslauf
//
//  Created by Lisis Ruschel on 20.08.24.
//

import SwiftUI

struct ExperienceView: View {
    let experiences: [Experience]
    
    var body: some View {
        ScrollView{
            Text("PROFESSIONAL EXPERIENCE")
                .bold()
                .padding(.top, 100)
                .foregroundColor(.secondaryBlue)
                .font(.title3)
            
            VStack(alignment: .leading, spacing: 20) {
                
                ForEach(experiences) { experience in
                    VStack(alignment: .leading, spacing: 8) {
                        Text(experience.jobTitle)
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Text("\(experience.company) - \(experience.location)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Text("\(experience.startDate) - \(experience.endDate)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        ForEach(experience.responsibilities, id: \.self) { responsibility in
                            Text("• \(responsibility)")
                                .font(.body)
                                .padding(.leading)
                        }
                    }
                    .padding(.bottom)
                }
            }
            .padding(30)
        }
    }}

var experiences = [
    Experience(
        jobTitle: "Youth Mentor - Social Work",
        company: "Trialog Jugendhilfe gGmbH",
        location: "Berlin",
        startDate: "Jul 2018",
        endDate: "Jan 2023",
        responsibilities: [
            "Assisted youth groups in achieving independence through detailed goal-oriented plans.",
            "Restructured living arrangements to promote healthier lifestyles.",
            "Adapted coaching strategies for better outcomes, resulting in higher success rates."
        ]
    ),
    Experience(
        jobTitle: "Social Media Evaluator",
        company: "Appen - Machine Intelligence",
        location: "Remote",
        startDate: "Jul 2018",
        endDate: "Dec 2018",
        responsibilities: [
            "Assessed the quality and relevance of information in news feeds and search results.",
            "Contributed to enhancing the user experience on social media platforms.",
            "Managed documentation and controlled processes to ensure accuracy and efficiency."
        ]
    ),
    Experience(
        jobTitle: "Legal Intern",
        company: "Oliveira Sartori & Fornasaro Law office",
        location: "Florianópolis, Brazil",
        startDate: "Nov 2013",
        endDate: "Dec 2014",
        responsibilities: [
            "Conducted legal research and drafted judgments.",
            "Prepared and attended hearings.",
            "Consulted with clients and managed case documentation."
        ]
    )
]


#Preview {
    ExperienceView(experiences: experiences)
}
