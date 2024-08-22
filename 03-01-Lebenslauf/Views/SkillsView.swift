import SwiftUI

struct SkillRow: View {
    let category: SkillCategory
    
    var body: some View {
        HStack(alignment: .top) {
            Text(category.title)
                .fontWeight(.bold)
                .frame(width: 120, alignment: .leading)
            Text(category.skills)
        }
        .padding(.vertical, 2)
    }
}

struct SkillsView: View {
    let skillCategories = [
        SkillCategory(title: "Proficient:", skills: "JavaScript, Kotlin"),
        SkillCategory(title: "Familiar:", skills: "TypeScript, Python, Java"),
        SkillCategory(title: "Mobile:", skills: "Android (Kotlin), Jetpack Compose, React Native"),
        SkillCategory(title: "Learning:", skills: "Swift & SwiftUI for iOS"),
        SkillCategory(title: "Frontend:", skills: "React, Next.js, HTML, CSS, Bootstrap, Tailwind CSS, Figma"),
        SkillCategory(title: "Backend:", skills: "Express.js, MongoDB, SQL, Room, Firebase, API Handling and Integration"),
        SkillCategory(title: "Tools & Tech:", skills: "Docker Compose, GitHub, Vercel, Android Studio, IntelliJ, VSCode")
    ]
    
    var body: some View {
        ScrollView{
            Text("TECHNICAL SKILLS")
                .bold()
                .padding(.top, 100)
                .foregroundColor(.secondaryBlue)
                .font(.title3)
        VStack(alignment: .leading, spacing: 10) {
            ForEach(skillCategories) { category in
                SkillRow(category: category)
            }
        }
        .padding(30)

    }
    }
    
}

#Preview {
    SkillsView()
}
