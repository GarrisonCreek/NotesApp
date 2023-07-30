//
//  NoteSummaryView.swift
//  Notes
//
//  Created by Garrison Creek on 7/30/23.
//

import SwiftUI

struct NoteSummaryView: View {
    @EnvironmentObject var noteData: NoteData
    
    var note: Note

    var body: some View {
        VStack(alignment: .leading) {
            
            Text(note.title)
                .font(.title)
                .bold()
            Text(note.description)
                .font(.body)
            Text(note.date, style: .date) // TODO: Change Date to something more reasonable to have in reminders
            HStack {
                Text("Priority: ")
                ForEach(0..<note.priority) {_ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
            }
            Spacer()
        }
        
    }
}

struct NoteSummaryView_Previews: PreviewProvider {
    static let noteData = NoteData()

    static var previews: some View {
        NoteSummaryView(note: notes[0])
            .environmentObject(noteData)
    }
}
