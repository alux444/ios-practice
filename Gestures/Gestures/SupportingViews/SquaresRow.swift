//
//  SquaresRow.swift
//  Gestures
//
//  Created by Alex Liang on 05/07/2026.
//

import SwiftUI

struct SquaresRow: View {
    let colors: [Color]
    let dim: CGFloat
    let cornerRadius: CGFloat
    
    init( colors: [Color], dim: CGFloat = 50, cornerRadius: CGFloat = 5) {
        self.colors = colors
        self.dim = dim
        self.cornerRadius = cornerRadius
    }
    
    var body: some View {
        GridRow {
            ForEach(colors, id: \.self) { color in
                color
                    .frame(width: dim, height: dim)
                    .clipShape(.rect(cornerRadius: cornerRadius))
            }
        }
    }
}

struct GradientBackground: View {
    let colors: [Color]
    let opacity: CGFloat
    
    init( colors: [Color], opacity: CGFloat = 0.3) {
        self.colors = colors
        self.opacity = opacity
    }
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom)
            .opacity(opacity)
            .ignoresSafeArea()
    }
}

#Preview {
    ZStack {
        GradientBackground(colors: [.blue, .indigo])
        Grid {
            ForEach(0..<10) { i in
                SquaresRow(
                    colors: [.red, .green, .blue],
                    dim: CGFloat(i * 10)
                )
            }
        }
    }
}
