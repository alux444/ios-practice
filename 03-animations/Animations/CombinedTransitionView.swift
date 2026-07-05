//
//  CombinedTransitionView.swift
//  Animations
//
//  Created by Alex Liang on 05/07/2026.
//

import SwiftUI

struct CombinedTransitionView: View {
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
                            .move(edge: .trailing)
                            .combined(with: .opacity)
                            .combined(with: .scale(scale: 0.5))
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
        .navigationTitle("Combined transition")
    }
}

#Preview {
    CombinedTransitionView()
}
