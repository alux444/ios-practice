//
//  ContentView.swift
//  greetings
//
//  Created by Alex Liang on 07/06/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                TitleView()
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
    ContentView()
}
