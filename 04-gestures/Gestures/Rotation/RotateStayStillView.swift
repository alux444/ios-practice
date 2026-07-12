import SwiftUI

struct RotateStayStillView: View {
    @State private var rotation: Double = 0.0
    @State private var currentRotation: Double = 0.0
    
    var totalRotation: Double {
        currentRotation + rotation
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            NiceTextView(
                text: "Hello world",
                bgColor: .black,
                fgColor: .orange,
                radius: 10,
            )
            .rotationEffect( Angle(degrees: totalRotation))
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        currentRotation = value.degrees
                    }
                    .onEnded { value in
                        withAnimation( .spring()) {
                            rotation += currentRotation
                            currentRotation = 0
                        }
                    }
            )
            .onTapGesture {
                withAnimation( .spring()) {
                    rotation = 0
                    currentRotation = 0
                }
            }
            
            Spacer()
        }
        .navigationTitle("Rotate and stay still")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RotateStayStillView()
}
