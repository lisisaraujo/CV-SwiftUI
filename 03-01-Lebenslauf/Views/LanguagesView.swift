//
//  LanguagesView.swift
//  03-01-Lebenslauf
//
//  Created by Lisis Ruschel on 22.08.24.
//

import SwiftUI

struct LanguagesView: View {
    var languages = [Language(language: "English", level: "fluent"), Language(language: "German", level: "fluent"), Language(language: "Portuguese", level: "Native"), Language(language: "Spanish", level: "Intermediate")]
    
    
    var body: some View {
        ScrollView{
            Text("SPOKEN LANGUAGES")
                .bold()
                .padding(.top, 100)
                .foregroundColor(.secondaryBlue)
                .font(.title3)
            
            VStack(alignment: .leading, spacing: 20) {
                
                ForEach(languages) { language in
                    HStack(alignment: .firstTextBaseline, spacing: 8) {
                        Text(language.language)
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Text(language.level)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    
                    }
                    .padding(.bottom)
                }
            }
            .padding(30)
        }
    }
}

#Preview {
    LanguagesView()
}
