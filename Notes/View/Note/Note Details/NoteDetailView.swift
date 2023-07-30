//
//  NoteDetailView.swift
//  Notes
//
//  Created by Garrison Creek on 7/30/23.
//

import SwiftUI

struct NoteDetailView: View {
    @EnvironmentObject var noteData: NoteData
    @Environment(\.editMode) var editMode

    var note: Note
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                NoteSummaryView(note: note)
            } else {
                EditNoteView()
                    .onAppear {
                        //TODO: FILL IN
                    }
                    .onDisappear {
                        //TODO: FILL IN
                    }
            }
            Spacer()
        }
        .padding()
    }
}

struct NoteDetailView_Previews: PreviewProvider {
    static let noteData = NoteData()
    
    static var previews: some View {
        Group {
            NoteDetailView(note: notes[0])
            NoteDetailView(note: notes[1])
        }
        .environmentObject(noteData)
    }
}
