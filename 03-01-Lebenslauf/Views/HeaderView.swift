//
//  HeaderView.swift
//  03-01-Lebenslauf
//
//  Created by Lisis Ruschel on 20.08.24.
//

import SwiftUI

struct HeaderView: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: "chevron.left")
                .font(.title3)
                .foregroundColor(.white)
            
            Spacer()
            
            Text(title)
                .foregroundColor(.white)
                .font(.title3)
            
            Spacer()
            
            Image(systemName: "square.and.arrow.up")
                .font(.title3)
                .foregroundColor(.white)
            
            Image(systemName: "heart")
                .font(.title3)
                .foregroundColor(.white)
        }
        .padding()
        .background(.primaryBlue)
        Spacer()
    }
    
}

#Preview {
    HeaderView(title: "Lisis")
}
