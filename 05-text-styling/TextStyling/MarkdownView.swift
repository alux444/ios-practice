//
//  MarkdownView.swift
//  TextStyling
//
//  Created by Alex Liang on 12/07/2026.
//

import SwiftUI

struct MarkdownView: View {
    // needs to be localizedstringkey for md to work
    let favouritesText: LocalizedStringKey = """
___My favourite websites___

Here are some of my favourite websites

1. **[Google](https://google.com/)**: Search engine!

`var hello: String = \"Hello world!\"`
"""
    
    var body: some View {
        Text(favouritesText)
    }
}

#Preview {
    MarkdownView()
}
