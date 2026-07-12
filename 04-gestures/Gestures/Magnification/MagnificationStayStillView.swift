//
//  MagnificationStayStillView.swift
//  Gestures
//
//  Created by Alex Liang on 05/07/2026.
//

import SwiftUI

struct MagnificationStayStillView: View {
    @State private var scaleFactor: CGFloat = 1.0
    
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
            .navigationTitle("Magnify and stay still")
            .navigationBarTitleDisplayMode( .inline)
        }
    }
}

#Preview {
    MagnificationStayStillView()
}
