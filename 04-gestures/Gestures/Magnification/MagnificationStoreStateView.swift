//
//  MagnificationStoreStateView.swift
//  Gestures
//
//  Created by Alex Liang on 09/07/2026.
//

import SwiftUI

struct MagnificationStoreStateView: View {
    @Binding var scaleFactor: CGFloat;
    
    var body: some View {
        NavigationStack{
            VStack {
                Spacer()
                NiceTextView(
                    text: "Hello world\nhellooo helo",
                    bgColor: .black,
                    fgColor: .orange,
                    radius: 10,
                )
                .scaleEffect( scaleFactor)
                .contentShape( Rectangle())
                .gesture(
                    MagnifyGesture()
                        .onChanged { value in
                            withAnimation {
                                scaleFactor = value.magnification
                            }
                        }
                )
                Spacer()
            }
            .navigationTitle("Magnify and store state")
            .navigationBarTitleDisplayMode( .inline)
        }
    }
}

#Preview {
    MagnificationStoreStateView(scaleFactor: .constant(1))
}
