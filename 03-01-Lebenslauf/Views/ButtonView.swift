//
//  ButtonView.swift
//  03-01-Lebenslauf
//
//  Created by Lisis Ruschel on 22.08.24.
//

import SwiftUI

struct ButtonView: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(title) {
            action()
        }
        .padding(.horizontal, 50)
        .padding(.vertical, 20)
        .font(.headline)
        .background(.primaryBlue)
        .foregroundColor(.white)
        .clipShape(.capsule)
    }
}


