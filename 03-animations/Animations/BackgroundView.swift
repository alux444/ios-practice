//
//  BackgroundView.swift
//  Animations
//
//  Created by Alex Liang on 05/07/2026.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        MeshGradient(
            width: 2,
            height: 2,
            points: [
                [0,0], [1,0],
                [0,1], [1,1],
            ],
            colors: [
                .pink, .blue, .indigo
            ]
        )
        .opacity(0.4)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
