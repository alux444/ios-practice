//
//  ContentViewLandscape.swift
//  greetings
//
//  Created by Alex Liang on 13/06/2026.
//

import SwiftUI

struct ContentViewLandscape: View {
    var body: some View {
         ZStack {
            BackgroundView()
            HStack {
                TitleViewVertical()
                Spacer()
                MessagesView()
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentViewLandscape()
}
