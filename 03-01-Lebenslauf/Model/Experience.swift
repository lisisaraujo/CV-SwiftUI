//
//  Experience.swift
//  03-01-Lebenslauf
//
//  Created by Lisis Ruschel on 20.08.24.
//

import Foundation
struct Experience: Identifiable {
    let id = UUID()
    let jobTitle: String
    let company: String
    let location: String
    let startDate: String
    let endDate: String
    let responsibilities: [String]
}
