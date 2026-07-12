import SwiftUI

struct DragBounceBackView: View {
    @State private var offset: CGSize = .zero
    var body: some View {
        VStack {
            Squares()
            Spacer()
            NiceTextView(
                text: "Hello!!",
                bgColor: .black.opacity(0.9),
                fgColor: .orange.opacity(0.9),
                radius: 10,
            ).offset(offset)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        offset = value.translation
                    }
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            offset = .zero
                        }
                    }
                )
            Spacer()
        }
        .navigationTitle("Drag and bounce back")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DragBounceBackView()
}
