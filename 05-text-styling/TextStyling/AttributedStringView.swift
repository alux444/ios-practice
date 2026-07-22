//
//  AttributedStringView.swift
//  TextStyling
//
//  Created by Alex Liang on 12/07/2026.
//

import SwiftUI

struct AttributedStringView: View {
    var attributedString: AttributedString {
        var myString = AttributedString("Hello!!")
        myString.foregroundColor = .red
        myString.font = Font.largeTitle
        return myString
    }
    
    var otherAttributedString: AttributedString {
        let codingIsAwesome = "Coding is awesome!"
        var myString = AttributedString()
        
        myString.font = Font.title
        
        for (index, char) in codingIsAwesome.enumerated() {
            var letterString = AttributedString( String(char))
            let red = 0.3
            let green = 0.3
            let blue = Double(index % codingIsAwesome.count) / Double(codingIsAwesome.count)
            
            letterString.foregroundColor = .init(red: red, green: green, blue: blue)
            letterString.baselineOffset = Double(index)
            myString += letterString
        }
        
        return myString
    }
    
    var body: some View {
        Text(attributedString)
        Text(otherAttributedString)
    }
}

#Preview {
    AttributedStringView()
}
