//
//  DragSectionView.swift
//  Gestures
//
//  Created by Alex Liang on 09/07/2026.
//

import SwiftUI

struct DragSectionView: View {
    @State private var scaleFactor: CGFloat = 1.0;
    @State private var offset: CGSize = .zero
    
    var body: some View {
        Section(
            content: {
                NavigationLink(
                    destination: {
                        DragBounceBackView()
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text( "Drag Gesture")
                            Text( "Go back")
                                .fontWeight( .light)
                        }
                    })
                
                NavigationLink(
                    destination: {
                        DragStayStillView()
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text( "Drag Gesture")
                            Text( "Stay still")
                                .fontWeight( .light)
                        }
                    })
                
                NavigationLink(
                    destination: {
                        DragGestureStoreStateView(endOffset: $offset)
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text( "Drag Gesture")
                            Text( "Store state")
                                .fontWeight( .light)
                        }
                    })
            },
            header: {
            Text("Drag Gesture")
        })
    }
}

#Preview {
    Form {
        DragSectionView()
    }
}
