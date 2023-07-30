//
//  ContentView.swift
//  Notes
//
//  Created by Garrison Creek on 7/29/23.
//

import SwiftUI


struct ContentView: View {
    @State private var selection: Tab = .notes
    
    enum Tab {
        case notes
        case profile
    }
    
    var body: some View {
        TabView(selection: $selection) {
            NoteListView()
                .tabItem {
                    Label("Notes", systemImage: "list.bullet")
                }
                .tag(Tab.notes)
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag(Tab.profile)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
