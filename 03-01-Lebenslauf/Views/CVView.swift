import SwiftUI

struct CVView: View {
    
    var sections: [Section] = [
        Section(title: "Skills", iconName: "globe"),
        Section(title: "Education", iconName: "book"),
        Section(title: "Experience", iconName: "briefcase")
    ]
    
    var aboutMe: AboutMe = AboutMe(name: "Lexi Luthor", occupation: "Software & Mobile Engineer", description: "Berlin-based Web/Mobile Engineer and UX/UI Designer dedicated to continuous learning and growth. With a diverse background in the social field, I am passionate about creating innovative web solutions that address real human needs. I thrive in collaborative environments and enjoy working within diverse teams.", profilePic: "profilePicture1")
    
    @State private var selectedSection: String?
    
    var body: some View {
        VStack {
            HeaderView(title: aboutMe.name)
            ScrollView {
                AboutMeView(aboutMe: aboutMe)
                ForEach(sections, id: \.title) { section in
                    Button(action: {
                        self.selectedSection = section.title
                    }) {
                        SectionView(section: section)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
        .sheet(item: $selectedSection) { sectionTitle in
            if sectionTitle == "Skills"{
                SkillsView()
            }
            if sectionTitle == "Education"{
                EducationView()
            }
            else {
                ExperienceView()
            }
          
        }
    }
}

// Extend String to conform to Identifiable for use with .sheet(item:)
extension String: Identifiable {
    public var id: String { self }
}

#Preview {
    CVView()
}
