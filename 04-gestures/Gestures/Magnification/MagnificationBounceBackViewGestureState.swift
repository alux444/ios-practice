import SwiftUI

struct MagnificationBounceBackViewGestureState: View {
    @GestureState private var scaleFactor: CGFloat = 1.0
    var body: some View {
        NavigationStack{
            VStack {
                Spacer()
                NiceTextView(
                    text: "Hello world",
                    bgColor: .black,
                    fgColor: .orange,
                    radius: 10,
                )
                .scaleEffect( scaleFactor)
                .contentShape( Rectangle())
                .animation( .spring(), value: scaleFactor)
                .gesture(
                    MagnifyGesture()
                        .updating($scaleFactor,
                                  body: {
                                      value, state, transaction in
                                      state = value.magnification
                                  })
                    )
            
                Spacer()
            }
            .navigationTitle("Magnify and bounce back (gesture state)")
            .navigationBarTitleDisplayMode( .inline)
        }
    }
}

#Preview {
    MagnificationBounceBackViewGestureState()
}
