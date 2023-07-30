//
//  NoteData.swift
//  Notes
//
//  Created by Garrison Creek on 7/30/23.
//

import Foundation

final class NoteData: ObservableObject {
    @Published var notes: [Note] = Note.testNotes
//    @Published var profile = Profile.default
    
    
}

