//
//  LanguageOptionsView.swift
//  greetings
//
//  Created by Alex Liang on 13/06/2026.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    // we use a string bc we want to store this in app storage
    @Binding var layoutDirectionString: String

    var body: some View {
        Menu {
            Button("English") {
                language = "en"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            Button("Spanish") {
                language = "es"
                layoutDirectionString = RIGHT_TO_LEFT
            }
            Button("Chinese") {
                language = "zh"
                layoutDirectionString = LEFT_TO_RIGHT
            }
        } label: {
            Image(systemName: "gearshape.fill")
                .foregroundStyle(Color.black)
        }
    }
}

#Preview {
    LanguageOptionsView(
        language: .constant("EN"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT)
    )
}
