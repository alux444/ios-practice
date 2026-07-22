//
//  AcrosticPoemView.swift
//  TextStyling
//
//  Created by Alex Liang on 12/07/2026.
//

import SwiftUI

struct LineOfPoetry: Identifiable {
    let id = UUID()
    let line: String
    
    var firstChar: String {
        guard let first = line.first else {
            return ""
        }
        return String(first)
    }
    
    var remainingLine: String {
        String(line.dropFirst())
    }
}

struct AcrosticPoemView: View {
    private var poem: [LineOfPoetry] = [
        .init(line: "Pandora"),
        .init(line: "Opened"),
        .init(line: "Everything"),
        .init(line: "To"),
        .init(line: "Realize"),
        .init(line: "Yes! But...")
    ]
    
    func colorFirstLetterLineOfPoetry(line: LineOfPoetry, color: Color = .blue) -> Text {
        Text("\(Text(line.firstChar).foregroundStyle(color).bold())\(line.remainingLine)")
    }

    var body: some View {
        VStack {
            Text("Hello!")
                .foregroundStyle(.red)
                .bold()
                .font(.largeTitle)
            
            VStack(alignment: .leading) {
                ForEach(poem) { line in
                    colorFirstLetterLineOfPoetry(line: line)
                }
            }
        }
        .padding()
    }
}

#Preview {
    AcrosticPoemView()
}
