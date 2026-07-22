//
//  OpenURLActionView.swift
//  TextStyling
//
//  Created by Alex Liang on 12/07/2026.
//

import SwiftUI

struct OpenURLActionView: View {
    let google = "*[Google](https://www.google.com)*"
    
    @State private var visits = 0
    let MAX_VISITS = 4
    
    var visitMe: String {
        switch(visits) {
        case 0: return "Check out \(google) for googling"
        case 1: return "Glad you checked out \(google) for googling"
        case 2: return "Still using \(google) for googling"
        case 3...MAX_VISITS: return "\(google)"
        default: return "No more google..."
        }
    }
    
    @State private var actOfKindnessURLFromGoogle = "*[Acts of Kindness](https://www.google.com/search?q=acts+of+kindness&sourceid=chrome&source=chrome.ob&ie=UTF-8)*"
    @State private var showingAlert = false
    
    var body: some View {
        Form {
            Text(LocalizedStringKey(visitMe))
                .environment(
                    \.openURL,
                              OpenURLAction { url in
                        visits += 1
                    return .systemAction
                    }
                )
            Text(LocalizedStringKey(actOfKindnessURLFromGoogle))
                .environment(
                    \.openURL,
                     OpenURLAction { url in
                         if url.absoluteString .contains( "google") {
                             showingAlert
                                 .toggle()
                                      return .discarded
                                      // prevent opening this url
                                      // there is also .handled = I processed this, only semantic difference
                                  } else {
                                      return .systemAction
                                  }
                              }
                )
        }
        .tint(.secondary)
        .bold()
        .foregroundStyle(.blue)
        .font(.title)
        .alert(
            "Google is blocked",
            isPresented: $showingAlert
        ) {
            Button("Ok", role: .cancel) {}
        }
    }
}

#Preview {
    OpenURLActionView()
}
