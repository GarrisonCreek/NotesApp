//
//  NotesList.swift
//  Notes
//
//  Created by Garrison Creek on 7/29/23.
//

import SwiftUI


struct NoteListView: View {
    @EnvironmentObject var noteData: NoteData
    @State private var newNote = false

    var body: some View {
        
        NavigationView {
            List {
                ForEach(noteData.notes) {note in
                    NavigationLink {
                        NoteDetailView(note: note)
                    } label: {
                        Text(note.title)
                    }
                }
            
            }
            .navigationTitle("Notes")
            .toolbar {
                Button {
                    newNote.toggle()
                } label: {
                    Label("New Note", systemImage: "plus")
                }
            }
            .sheet(isPresented: $newNote) {
                NewNoteView()
            }
        }
        
    }
}

struct NotesList_Previews: PreviewProvider {
    static var previews: some View {
        NoteListView()
            .environmentObject(NoteData())
    }
}
