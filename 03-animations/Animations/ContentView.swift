//
//  ContentView.swift
//  Animations
//
//  Created by Alex Liang on 05/07/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("Built-in transitions") {
                    NavigationLink("Move transition") {
                        MoveTransitionView()
                    }
                    NavigationLink("Slide transition") {
                        SlideTransitionView()
                    }
                    NavigationLink("Asymmetric transition") {
                        AsymmetricTransitionView()
                    }
                    NavigationLink("Combined transition") {
                        CombinedTransitionView()
                    }
                }
                
                Section("Custom transitions") {
                    NavigationLink("Rotate+scale transition") {
                        RotateScaleTransitionView()
                    }
                    NavigationLink("Flip transition") {
                        FlipTransitionView()
                    }
                    NavigationLink("Scale+blur transition") {
                        ScaleBlurTransitionView()
                    }
                }
            }
            .navigationTitle("Transitions")
        }
    }
}

#Preview {
    ContentView()
}

