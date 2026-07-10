import SwiftUI

struct GeneralSectionView: View {
    @State private var scaleFactor: CGFloat = 1.0;
    @State private var offset: CGSize = .zero
    
    var body: some View {
        Section(
            content: {
                NavigationLink(
                    destination: {
                        SimultaneousGestureView()
                    },
                    label: {
                        VStack(alignment: .leading) {
                            Text( "Simultaneous Gesture")
                            Text( "Go back")
                                .fontWeight( .light)
                        }
                    })
                

            },
            header: {
            Text("General Gesture")
        })
    }
}

#Preview {
    Form {
        GeneralSectionView()
    }
}
