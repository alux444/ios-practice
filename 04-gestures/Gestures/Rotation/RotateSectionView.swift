import SwiftUI

struct RotateSectionView: View {
    @State private var rotation: Double = 0.0
    
    var body: some View {
        Section(
            content: {
                NavigationLink(
                    destination: {
                        RotateBounceBackView()
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text( "Rotate Gesture")
                            Text( "Go back")
                                .fontWeight( .light)
                        }
                    })
                
                NavigationLink(
                    destination: {
                        RotateStayStillView()
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text( "Rotate Gesture")
                            Text( "Stay still")
                                .fontWeight( .light)
                        }
                    })
                
                NavigationLink(
                    destination: {
                        RotateStoreStateView( rotation: $rotation)
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text( "Rotate Gesture")
                            Text( "Store state")
                                .fontWeight( .light)
                        }
                    })
            },
            header: {
            Text("Rotate Gesture")
        })
    }
}

#Preview {
    Form {
        RotateSectionView()
    }
}
