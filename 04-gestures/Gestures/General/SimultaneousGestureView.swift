//
//  SimultaneousGestureView.swift
//  Gestures
//
//  Created by Alex Liang on 11/07/2026.
//

import SwiftUI

struct SimultaneousGestureView: View {
    @State private var offset: CGSize = .zero
    @State private var rotation: Double = 0.0
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        VStack {
            Spacer()
            
            NiceTextView(
                text: "Hello!!\nHello!!\n Hellooooo",
                bgColor: .black.opacity(0.9),
                fgColor: .orange.opacity(0.9),
                radius: 10,
            )
            .offset( offset)
            .rotationEffect( .degrees(rotation))
            .scaleEffect( scale)
            .gesture(
                SimultaneousGesture(
                    SimultaneousGesture(
                        DragGesture()
                            .onChanged { value in
                                offset = value.translation
                            }
                            .onEnded { value in
                                withAnimation( .spring()) {
                                    offset = .zero
                                }
                            }
                        ,
                        MagnificationGesture()
                            .onChanged { value in
                                scale = value.magnitude
                            }
                            .onEnded { value in
                                withAnimation( .spring()) {
                                    scale = 1.0
                                }
                            }
                    )
                    ,
                    RotationGesture()
                        .onEnded { value in
                            rotation = value.degrees
                        }
                        .onEnded { _ in
                            withAnimation( .spring()) {
                                rotation = 0.0
                            }
                        }
                )
            )
            
            Spacer()
        }
        .navigationTitle("Simultaneous Gesture")
        .navigationBarTitleDisplayMode( .inline)
    }
}

#Preview {
    SimultaneousGestureView()
}
