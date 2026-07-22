//
//  ContentView.swift
//  RichTextEditor
//
//  Created by Alex Liang on 15/07/2026.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.fontResolutionContext) var fontResolutionContext
    
    @State private var text = AttributedString("Hello!")
    @State private var selection = AttributedTextSelection()
    
    let foregroundColors: [Color] = [
        .black, .red, .orange, .yellow, .green, .blue, .purple,
    ]
    let backgroundColors: [Color] = [
        .red.opacity(0.2),
        .orange.opacity(0.2),
        .yellow.opacity(0.2),
        .green.opacity(0.2),
        .blue.opacity(0.2),
        .purple.opacity(0.2),
    ]

    var body: some View {
        VStack {
            TextEditor(
                text: $text,
                selection: $selection,
            )
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.secondary.opacity(0.2), lineWidth: 1)
            }
            
            // alignment
            HStack {
                Button(
                    "",
                    systemImage: "text.alignleft") {
                        text
                            .transformAttributes(
                                in: &selection) { container in
                                    container.alignment = .left
                                }
                    }
                
                Button(
                    "",
                    systemImage: "text.aligncenter") {
                        text
                            .transformAttributes(
                                in: &selection) { container in
                                    container.alignment = .center
                                }
                    }
                
                Button(
                    "",
                    systemImage: "text.alignright") {
                        text
                            .transformAttributes(
                                in: &selection) { container in
                                    container.alignment = .right
                                }
                    }
            }
            
            // font
            HStack {
                let fonts: [Font] = [
                    .largeTitle,
                    .title,
                    .body,
                    .headline,
                    .subheadline,
                    .caption
                ]
                ForEach(fonts, id: \.self) { font in
                    Button("Aa") {
                        text.transformAttributes(in: &selection) {
                            container in
                                container.font = font
                        }
                    }.font(font)
                }
            }
            
            // color
            HStack {
                VStack {
                    // foreground
                    ColorPickerRow(
                        title: "Text color",
                        colors: foregroundColors,
                        action: { color in
                            text.transformAttributes(in: &selection) {
                                container in
                                container.foregroundColor = color
                            }
                        }
                    )
                    
                    // background
                    ColorPickerRow(
                        title: "Background color",
                        colors: backgroundColors,
                        action: { color in
                            text.transformAttributes(in: &selection) {
                                container in
                                container.backgroundColor = color
                            }
                        }
                    )
                }
                Spacer()
                VStack(alignment: .leading) {
                    Button("", systemImage: "bold") {
                        text
                            .transformAttributes(
                                in: &selection) {
                                    container in
                                    let current = container.font ?? .default
                                    
                                    let resolved = current.resolve(in: fontResolutionContext)
                                    
                                    let isBold = resolved.isBold
                                    
                                    container.font = current.bold(!isBold)
                                }
                    }
                    Button("", systemImage: "italic") {
                        text
                            .transformAttributes(
                                in: &selection) {
                                    container in
                                    let current = container.font ?? .default
                                    
                                    let resolved = current.resolve(in: fontResolutionContext)
                                    
                                    let isItalic = resolved.isItalic
                                    
                                    container.font = current.italic(!isItalic)
                                }
                    }
                    
                    Button("", systemImage: "underline") {
                        text
                            .transformAttributes(
                                in: &selection) {
                                    container in
                                    let current = container.underlineStyle
                                    
                                    container.underlineStyle = current == .single ? .init(pattern: .dot) : .single
                                    
                                    
                                }
                    }
                    
                    Button("", systemImage: "strikethrough") {
                        text
                            .transformAttributes(
                                in: &selection) {
                                    container in
                                        let current = container.strikethroughStyle
                                        
                                    container.strikethroughStyle = current == .single ? nil : .single
                                }
                    }
                    
                    Button("", systemImage: "arrow.up") {
                        text
                            .transformAttributes(
                                in: &selection) {
                                    container in
                                    let baseline = container.baselineOffset
               
                                    container.baselineOffset = (baseline ?? 0) + 2
                                }
                    }
                    
                    Button("", systemImage: "arrow.down") {
                        text
                            .transformAttributes(
                                in: &selection) {
                                    container in
                                    let baseline = container.baselineOffset
               
                                    container.baselineOffset = (baseline ?? 0) - 2
                                }
                    }
                }
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
