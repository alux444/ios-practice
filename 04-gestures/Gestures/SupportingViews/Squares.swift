//
//  Squares.swift
//  Gestures
//
//  Created by Alex Liang on 05/07/2026.
//

import SwiftUI

struct Squares: View {
    let opacity: CGFloat
    
    init(opacity: CGFloat = 0.5) {
        self.opacity = opacity
    }
    
    var body: some View {
        Grid {
            SquaresRow(colors: [.red, .blue, .yellow])
            SquaresRow(colors: [.indigo, .green, .purple])
            SquaresRow(colors: [.brown, .orange, .cyan])
        }
        .opacity(opacity)
    }
}

#Preview {
    Squares()
}
