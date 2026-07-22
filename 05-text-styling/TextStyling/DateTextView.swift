//
//  DateTextView.swift
//  TextStyling
//
//  Created by Alex Liang on 12/07/2026.
//

import SwiftUI

struct DateTextView: View {
    let eventDate = Date(timeIntervalSinceNow: 15)
    let event = Date()
    let dateInterval = DateInterval(start: Date(), end: Date(timeIntervalSinceNow: 30))
    
    var body: some View {
        Form {
            Text(Date.now...Date.now.addingTimeInterval(360))
            Text(dateInterval)
            
            Text("Event will occur in \(eventDate, style: .relative)")
            Text("Event will occur in \(eventDate, style: .offset)")
            Text("Event will occur in \(eventDate, style: .timer)")
            
            Text(Date(), format: .dateTime)
            Text(Date(), format: .dateTime.hour().minute().year())
        }
        .font(.largeTitle)
    }
}

#Preview {
    DateTextView()
}
