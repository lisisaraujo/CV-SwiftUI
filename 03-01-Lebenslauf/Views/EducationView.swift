//
//  EducationView.swift
//  03-01-Lebenslauf
//
//  Created by Lisis Ruschel on 20.08.24.
//

import SwiftUI

struct EducationView: View {
    var educationList = [
        Education(
            courseName: "MOBILE APP DEVELOPMENT & UX/UI DESIGN",
            institution: "Syntax Institute",
            location: "Remote",
            dates: "Dez 2023 - Dez 2024"
        ),
        Education(
            courseName: "FULL-STACK WEB DEVELOPMENT",
            institution: "Spiced Academy GmbH",
            location: "Berlin",
            dates: "Jan 2023 - April 2023"
        ),
        Education(
            courseName: "INTRODUCTION TO WEB DEVELOPMENT",
            institution: "FrauenLoop gUG",
            location: "Berlin",
            dates: "Mai 2022 - Nov 2022"
        ),
        Education(
            courseName: "BACHELOR OF ARTS IN SOCIAL WORK",
            institution: "Alice-Salomon-University",
            location: "Berlin",
            dates: "Oct 2016 - Feb 2021"
        ),
        Education(
            courseName: "BACHELOR OF LAWS",
            institution: "Unisul",
            location: "Florianopolis, Brazil",
            dates: "Jan 2013 - Jul 2015 (Partial completion)"
        )
    ]
    
    var body: some View {
        ScrollView{
            
        Text("EDUCATION")
            .bold()
            .padding(.top, 100)
            .foregroundColor(.secondaryBlue)
            .font(.title3)
        VStack(alignment: .leading, spacing: 10){
       
            
            ForEach(educationList) { list in
                /*@START_MENU_TOKEN@*/Text(list.courseName)/*@END_MENU_TOKEN@*/
                    .bold()
                HStack{
                    Text(list.institution)
                    Text("-")
                    Text(list.location)
                }
                Text(list.dates)
                    .italic()
                    .padding(.bottom, 10)
                
                Divider()
                    
            }

        }
        .padding(30)
        }
    }
}

#Preview {
    EducationView()
}
