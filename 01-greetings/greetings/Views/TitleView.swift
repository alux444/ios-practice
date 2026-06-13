//
//  TitleView.swift
//  greetings
//
//  Created by Alex Liang on 07/06/2026.
//

import SwiftUI
import TipKit

struct TitleView: View {
    @State private var caption: LocalizedStringKey = "Some SwiftUI Programming"
    
    private var greetingsTip = GreetingsTip()
    
    var body: some View {
        HStack(alignment: .center) {
            TitleTextView(caption: $caption)
                .popoverTip(greetingsTip)
            Spacer()
            RotatableCircleView()
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
