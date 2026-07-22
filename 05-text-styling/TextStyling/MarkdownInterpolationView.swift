//
//  MarkdownInterpolationView.swift
//  TextStyling
//
//  Created by Alex Liang on 12/07/2026.
//

import SwiftUI

struct MarkdownInterpolationView: View {
    let rainbow = LinearGradient(
        colors: [
            .red, .orange, .yellow, .green, .blue, .purple
        ],
        startPoint: .leading,
        endPoint: .trailing,
    )
    
    var rainbowWelcome: Text {
        Text("*Welcome*")
            .foregroundStyle(rainbow)
        
    }
    let programText = Text( "**[SwiftUI](https://swiftpackageindex.com/swiftui)**")
    
    var body: some View {
        Text("\(rainbowWelcome) to the word of \(programText).")
            .padding()
            .font(.largeTitle)
            .tint(.cyan)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    MarkdownInterpolationView()
}
