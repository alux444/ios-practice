//
//  MainView.swift
//  greetings-mac
//
//  Created by Alex Liang on 14/06/2026.
//

import SwiftUI

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
        ToolbarItem(placement: .navigation) {
            LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
        }
    }

    var body: some View {
        NavigationStack {
            ContentView()
                .toolbar {
                    languageToolbarItem
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
