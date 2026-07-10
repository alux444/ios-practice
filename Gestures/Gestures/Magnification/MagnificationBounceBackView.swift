import SwiftUI

struct MagnificationBounceBackView: View {
    @State private var scaleFactor: CGFloat = 1.0
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
                .gesture(
                    MagnifyGesture()
                        .onChanged { value in
                            withAnimation {
                                scaleFactor = value.magnification
                            }
                        }
                        .onEnded { _ in
                            withAnimation(.spring) {
                                scaleFactor = 1.0
                            }
                        }
                )   
                Spacer()
            }
            .navigationTitle("Magnify and bounce back")
            .navigationBarTitleDisplayMode( .inline)
        }
    }
}

#Preview {
    MagnificationBounceBackView()
}
