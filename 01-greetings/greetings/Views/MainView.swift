//
//  MainView.swift
//  greetings
//
//  Created by Alex Liang on 13/06/2026.
//

import SwiftUI

// portrait - compact width, reg height
struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    var isPortrait: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var languageToolbarItem: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
        }
    }

    var body: some View {
        if isPortrait || isIPad {
            NavigationStack {
                ContentView()
                    .toolbar {
                        languageToolbarItem
                    }
            }
        } else {
            NavigationStack {
                ContentViewLandscape()
                    .toolbar {
                        languageToolbarItem
                    }
            }
        }
    }
}

#Preview {
    MainView(
        language: .constant("en"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT)
    )
}
