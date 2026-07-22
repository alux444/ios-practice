//
//  InflectView.swift
//  TextStyling
//
//  Created by Alex Liang on 12/07/2026.
//

import SwiftUI

struct InflectView: View {
    @State private var count = 0
    let nounList = ["bread", "fish", "salt", "cactus", "ginger"]
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    ForEach(nounList, id: \.self) { noun in
                        LabeledContent(noun.capitalized) {
                            Text("^[\(count) \(noun.capitalized)](inflect:true)")
                        }
                    }
                }
                Button("increment", systemImage: "plus.circle.fill", action: {
                    count += 1
                })
            }
        }
    }
}

#Preview {
    InflectView()
}
