//
//  ListMemberStyleView.swift
//  TextStyling
//
//  Created by Alex Liang on 12/07/2026.
//

import SwiftUI

struct ListMemberStyleView: View {
    let names = [
        "Elmo",
        "Big bird",
        "Timmy",
        "Bob",
        "Alfred",
    ]
    
    // adjusts based on location
    let length = Measurement(value: 212, unit: UnitLength.centimeters)
    
    var body: some View {
        Text(names, format: .list(type: .and))
        Text(names, format: .list(type: .or))
        Text(length, format: .measurement(width: .wide))
        Text(length, format: .measurement(width: .narrow))
        Text(length, format: .measurement(width: .abbreviated))
    }
}

#Preview {
    ListMemberStyleView()
}
