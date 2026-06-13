//
//  greetings_macApp.swift
//  greetings-mac
//
//  Created by Alex Liang on 14/06/2026.
//

import SwiftUI
import TipKit

@main
struct greetingsApp: App {
    @AppStorage("language") var language = "en"
    @AppStorage("languageDirectionString") var languageDirectionString: String =
        LEFT_TO_RIGHT

    var layoutDirection: LayoutDirection {
        languageDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    let resetTip = true; // debug
    
    var body: some Scene {
        WindowGroup {
            MainView(
                language: $language,
                layoutDirectionString: $languageDirectionString
            )
            .environment(\.locale, Locale(identifier: language))
            .environment(\.layoutDirection, layoutDirection)
            .task {
                if resetTip {
                    try? Tips.resetDatastore()
                }
                try? Tips.configure([
                    .displayFrequency(.immediate),
                    .datastoreLocation(.applicationDefault),
                ])
            }
        }
    }
}

