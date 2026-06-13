//
//  MessagesView.swift
//  greetings
//
//  Created by Alex Liang on 07/06/2026.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(text: "Hello", color: .purple),
        .init(text: "12312", color: .purple),
        .init(text: "hello hello hello hello hello hllo", color: .primary),
        .init(text: "pdsopkd", color: .pink),
        .init(text: "oooooo", color: .orange),
        .init(text: "hello", color: .orange),
    ]

    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) {
                dataItem in TextView(text: dataItem.text, color: dataItem.color)
            }
        }
        .padding()
    }
}

#Preview {
    MessagesView()
}
