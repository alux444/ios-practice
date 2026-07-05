//
//  CustomTransitionView.swift
//  Animations
//
//  Created by Alex Liang on 05/07/2026.
//

import SwiftUI

struct RotateScaleTransitionView: View {
    @State private var show = true
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                Spacer()
                
                if show {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.pink.gradient)
                        .frame(width: 200, height: 200)
                        .transition(
                            .rotatingScale
                        )
                }
                
                Spacer()
                
                Button(show ? "Hide" : "Show") {
                    withAnimation {
                        show.toggle()
                    }
                }
                .buttonStyle(.borderedProminent )
            }
        }
        .navigationTitle("Custom rotate+scale")
    }
}

#Preview {
    RotateScaleTransitionView()
}
