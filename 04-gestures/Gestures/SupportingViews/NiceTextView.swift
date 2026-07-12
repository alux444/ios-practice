//
//  NiceTextView.swift
//  Gestures
//
//  Created by Alex Liang on 05/07/2026.
//

import SwiftUI

struct NiceTextView: View {
    let text: String
    let bgColor: Color
    let fgColor: Color
    let radius: CGFloat
    
    var body: some View {
        Text( text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundStyle(fgColor)
            .padding()
            .background(bgColor)
            .cornerRadius(radius)
    }
}

#Preview {
    NiceTextView(
        text: "Hello world!",
        bgColor: .black,
        fgColor: .orange,
        radius: 10
    )
}
