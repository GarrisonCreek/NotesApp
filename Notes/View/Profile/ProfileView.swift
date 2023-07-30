//
//  ProfileView.swift
//  Notes
//
//  Created by Garrison Creek on 7/30/23.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var noteData: NoteData
    @State private var draftProfile = Profile.default

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
