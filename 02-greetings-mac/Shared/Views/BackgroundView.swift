//
//  BackgroundView.swift
//  greetings
//
//  Created by Alex Liang on 08/06/2026.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            colors: [
                .blue,
                Color(
                    red: 139 / 255,
                    green: 80 / 255,
                    blue: 233 / 255
                ),
                .purple,
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing,
        )
        .opacity(0.2).ignoresSafeArea(
            edges: .all
        )
    }
}

#Preview {
    BackgroundView()
}
