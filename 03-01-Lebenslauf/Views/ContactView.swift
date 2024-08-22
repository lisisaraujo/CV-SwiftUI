//
//  ContactView.swift
//  03-01-Lebenslauf
//
//  Created by Lisis Ruschel on 22.08.24.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        var contacts = [Contact(type: "phone.circle.fill", details: "+49 123482458"), Contact(type: "envelope.fill", details: "lexi.luthor@proton.me"), Contact(type: "link.circle.fill", details: "linkedIn"),
                        Contact(type: "link.circle.fill", details: "github")]
        ScrollView{
            Text("CONTACT")
                .bold()
                .padding(.top, 100)
                .foregroundColor(.secondaryBlue)
                .font(.title3)
            
            VStack(alignment: .leading, spacing: 20) {
                
                ForEach(contacts) { contact in
                    HStack(alignment: .firstTextBaseline, spacing: 8) {
                        Image(systemName: contact.type)
                            .font(.title)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .fontWeight(.semibold)
                        
                        Text(contact.details)
                            .font(.title2)
                            .foregroundColor(.black)
                    
                    }
                    .padding(.bottom)
                }
            }
            .padding(30)
        }
    }
}

#Preview {
    ContactView()
}
