//
//  AboutMeView.swift
//  03-01-Lebenslauf
//
//  Created by Lisis Ruschel on 20.08.24.
//

import SwiftUI

struct AboutMeView: View {
    
    var aboutMe: AboutMe
    
    @State private var currentPage = 0
    
    var body: some View {
        ZStack {
            TabView(selection: $currentPage) {
                VStack {
                    Image(aboutMe.profilePic)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                    
                    Text(aboutMe.name)
                        .font(.headline)
                        .foregroundColor(.white)
                    Text(aboutMe.occupation)
                        .font(.body)
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                }
                .tag(0)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.primaryBlue)
                
                VStack {
                    Text(aboutMe.description)
                        .font(.body)
                        .foregroundColor(.white)
                        .padding()
                }
                .tag(1)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.primaryBlue)
            }
         
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .clipShape(RoundedCorner(radius: 50, corners: [.bottomLeft, .bottomRight]))
            
            //scroll indicator
            VStack {
                Spacer()
                HStack(spacing: 8) {
                    ForEach(0..<2) { index in
                        Circle()
                            .fill(currentPage == index ? Color.accent : Color.white)
                            .frame(width: 10, height: 10)
                    }
                }
                .padding(.bottom, 16)
            }
   
        }
        .frame(width: .infinity, height: 250)
        Spacer()
    }
}

// Custom shape to apply corner radius to specific corners
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    AboutMeView(aboutMe: AboutMe(name: "Lexi Luthor", occupation: "Software & Mobile Engineer", description: "Berlin-based Web/Mobile Engineer and UX/UI Designer dedicated to continuous learning and growth. With a diverse background in the social field, I am passionate about creating innovative web solutions that address real human needs. I thrive in collaborative environments and enjoy working within diverse teams.", profilePic: "profilePicture1"))
}
