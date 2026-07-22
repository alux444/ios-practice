//
//  ContentView.swift
//  TextStyling
//
//  Created by Alex Liang on 12/07/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Acrostic poem") {
                AcrosticPoemView()
            }
            NavigationLink("Attributed strings") {
                AttributedStringView()
            }
            NavigationLink("Dates") {
                DateTextView()
            }
            NavigationLink("Inflect") {
                InflectView()
            }
            NavigationLink("List member styling") {
                ListMemberStyleView()
            }
            NavigationLink("Markdown interpolation") {
                MarkdownInterpolationView()
            }
            NavigationLink("Markdown") {
                MarkdownView()
            }
            NavigationLink("Open URL Action") {
                OpenURLActionView()
            }
        }
    }
}

#Preview {
    ContentView()
}
