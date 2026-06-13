//
//  TitleViewVertical.swift
//  greetings
//
//  Created by Alex Liang on 13/06/2026.
//

import SwiftUI

struct TitleViewVertical: View {
    @State private var caption: LocalizedStringKey = "Some SwiftUI Programming"

    var body: some View {
        VStack(alignment: .center) {
            TitleTextView(caption: $caption)
            
            RotatableCircleView()
            
            Spacer()
        }
    }
}

#Preview {
    TitleViewVertical()
}
