//
//  TitleTextView.swift
//  greetings
//
//  Created by Alex Liang on 13/06/2026.
//

import SwiftUI

struct TitleTextView: View {
    @Binding var caption: LocalizedStringKey

    let captions: [LocalizedStringKey] = [
        "Some SwiftUI Programming",
        "I love iOS",
        "Hummus hummus hummus",
        "Large Lamb Kebab Chilli Garlic Mint",
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Greetings App")
                .font(.largeTitle)
                .fontWeight(.semibold)
            #if os(macOS)
            Text(caption)
                .font(.headline)
                .bold()
            Text("Mac app!")
            #elseif os(iOS)
            Text(caption)
                .font(.headline)
                .fontWeight(.thin)
            Text("iOS app!")
            #endif
        }
        .onTapGesture {
            caption = captions.randomElement() ?? "Some SwiftUI Programming"
        }
    }
}

#Preview {
    TitleTextView(caption: .constant("Some SwiftUI Programming"))
}
