//
//  MagnificationSectionView.swift
//  Gestures
//
//  Created by Alex Liang on 05/07/2026.
//

import SwiftUI

struct MagnificationSectionView: View {
    @State private var scaleFactor: CGFloat = 1.0;
    var body: some View {
        Section(
            content: {
                NavigationLink(
                    destination: {
                        MagnificationBounceBackView()
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text( "Magnification Gesture")
                            Text( "Go back")
                                .fontWeight( .light)
                        }
                    })
            
                NavigationLink(
                    destination: {
                        MagnificationBounceBackViewGestureState()
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text( "Magnification Gesture")
                            Text( "Go back - Using GestureState")
                                .fontWeight( .light)
                        }
                    })
                
                NavigationLink(
                    destination: {
                        MagnificationStayStillView()
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text( "Magnification Gesture")
                            Text( "Stay still")
                                .fontWeight( .light)
                        }
                    })
                
                NavigationLink(
                    destination: {
                        MagnificationStoreStateView(scaleFactor: $scaleFactor)
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text( "Magnification Gesture")
                            Text( "Store state")
                                .fontWeight( .light)
                        }
                    })
            },
            header: {
            Text("Magnification Gesture")
        })
    }
}

#Preview {
    Form {
        MagnificationSectionView()
    }
}
