//
//  Note.swift
//  Notes
//
//  Created by Garrison Creek on 7/30/23.
//

import Foundation
import SwiftUI

struct Note: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var date: Date
    var priority: Int // 1, 2, 3, with 3 being the highest priority
    var isValid: Bool {
        !title.isEmpty
    }
//    var isFavorite: Bool
//    var isLocked: Bool
//    var password: String
}

//Array of Notes
extension Note {
    static let testNotes: [Note] = [
            Note(title: "Test Note 1", description: "This is a test note.", date: Date(), priority: 1),
            Note(title: "Test Note 2", description: "This is a test note.", date: Date(), priority: 2),
            Note(title: "Test Note 3", description: "This is a test note.", date: Date(), priority: 3),
            Note(title: "Test Note 4", description: "This is a test note.", date: Date(), priority: 1),
        ]
}
