//
//  SectionView.swift
//  03-01-Lebenslauf
//
//  Created by Lisis Ruschel on 20.08.24.
//

import SwiftUI

struct SectionView: View {
    var section: Section
    
    var body: some View {
        VStack {
            Image(systemName: section.iconName)
                .foregroundColor(.secondaryBlue)
            Text(section.title)
                .foregroundColor(.secondaryBlue)
        }
        .padding(40)
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.secondaryBlue, lineWidth: 1.5)
        )
        .cornerRadius(10)
        .padding()
        Spacer()
    }
}

#Preview {
    SectionView(section: Section(title: "Skills", iconName: "globe"))
}
