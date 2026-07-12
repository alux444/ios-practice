import SwiftUI

struct RotateBounceBackView: View {
    @State private var rotation: Double = 0.0
    
    var body: some View {
        VStack {
            Spacer()
            
            NiceTextView(
                text: "Hello world",
                bgColor: .black,
                fgColor: .orange,
                radius: 10,
            )
            .rotationEffect( Angle(degrees: rotation))
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        rotation = value.degrees
                    }
                    .onEnded { _ in
                        withAnimation( .spring()) {
                            rotation = 0.0
                        }
                    }
            )
            
            Spacer()
        }
        .navigationTitle("Rotate and bounce back")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RotateBounceBackView()
}
