//
//  GesturesDemo.swift
//  Gestures
//
//  Created by Alex Liang on 05/07/2026.
//

import SwiftUI

struct GesturesDemo: View {
    var body: some View {
        NavigationStack {
            Form {
                MagnificationSectionView()
                DragSectionView()
                RotateSectionView()
                GeneralSectionView()
            }
            .navigationTitle( "Gestures")
        }
    }
}

#Preview {
    GesturesDemo()
}
