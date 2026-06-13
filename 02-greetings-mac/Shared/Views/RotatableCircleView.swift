//
//  RotatableCircleView.swift
//  greetings
//
//  Created by Alex Liang on 13/06/2026.
//

import SwiftUI

struct RotatableCircleView: View {
    let lineWidth = 15.0
    let diameter = 70.0

    @State private var isRotated = false

    var angle: Angle {
        isRotated ? .zero : .degrees(360)
    }
    var angularGradient: AngularGradient {
        AngularGradient.init(
            gradient: Gradient(colors: [
                .red, .orange, .yellow, .green, .blue, .purple,
            ]),
            center: .center,
            startAngle: .degrees(0),
            endAngle: .degrees(360)
        )
    }

    var body: some View {
        Circle()
            .strokeBorder(
                angularGradient,
                lineWidth: lineWidth
            )
            .frame(width: diameter, height: diameter)
            .rotationEffect(angle)
            .onTapGesture {
                withAnimation {
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    RotatableCircleView()
}
