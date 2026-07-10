import SwiftUI

struct DragGestureStoreStateView: View {
    @State private var currentOffset: CGSize = .zero
    @Binding var endOffset: CGSize
    
    var offset: CGSize {
        CGSize(
            width: currentOffset.width + endOffset.width,
            height: currentOffset.height + endOffset.height
        )
    }
    
    var body: some View {
        VStack {
            Squares()
            Spacer()
            NiceTextView(
                text: "Hello!!",
                bgColor: .black.opacity(0.9),
                fgColor: .orange.opacity(0.9),
                radius: 10,
            ).offset( offset)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        withAnimation( .spring()) {
                            currentOffset = value.translation
                        }
                    }
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            endOffset = CGSize(
                                width: currentOffset.width + endOffset.width,
                                height: currentOffset.height + endOffset.height
                            )
                            currentOffset = .zero
                        }
                    }
                )
            .onTapGesture {
                withAnimation( .spring()) {
                    currentOffset = .zero
                    endOffset = .zero
                }
            }
            Spacer()
        }
        .navigationTitle("Drag and store state")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DragGestureStoreStateView(endOffset: .constant(.zero))
}
