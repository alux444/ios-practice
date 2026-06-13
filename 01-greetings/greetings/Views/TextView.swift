//
//  TextView.swift
//  greetings
//
//  Created by Alex Liang on 07/06/2026.
//

import SwiftUI

struct TextView: View {
    let text: LocalizedStringKey
    @State public var color: Color

    let colors: [Color] = [
        .myRed,
        .myTeal,
        .myPurple,
    ]
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    var font: Font {
        isIPad ? .largeTitle : .body
    }

    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding()
            .background(color.opacity(0.5))
            .shadow(
                color: .purple,
                radius: 5,
                x: 5,
                y: 5
            )
            .onTapGesture {
                withAnimation {
                    color = colors.randomElement() ?? .red
                }

            }
    }
}

#Preview {
    TextView(text: "Hello!", color: .myPurple)
}
