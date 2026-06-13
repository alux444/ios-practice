//
//  DataItemModel.swift
//  greetings
//
//  Created by Alex Liang on 07/06/2026.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
