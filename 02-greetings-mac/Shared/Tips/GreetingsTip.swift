//
//  GreetingsTip.swift
//  greetings
//
//  Created by Alex Liang on 14/06/2026.
//

import Foundation
import TipKit

struct GreetingsTip: Tip {
    var title: Text {
        Text("Click on text and dis")
    }
    
    var message: Text? {
        Text("Text will be randomly generated with nice animations!!")
    }
    
    var asset: Image {
        Image(systemName: "car.rear.and.tire.marks")
    }
}
