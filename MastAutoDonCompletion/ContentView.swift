//
//  ContentView.swift
//  MastAutoDonCompletion
//
//  Created by Tana Vora on 3/16/24.
//

import SwiftUI
import StatusKit
import Models

struct ContentView: View {
    let account = Account(id: "", username: "", displayName: "", avatar: URL(string: "https://apple.com")!, header: URL(string: "https://apple.com")!, acct: "", note: HTMLString(stringValue: "", parseMarkdown: false), createdAt: ServerDate(), followersCount: 0, followingCount: 0, statusesCount: 0, lastStatusAt: "", fields: [], locked: false, emojis: [], bot: false)
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            StatusEditor.MainView(mode: .mention(account: account, visibility: .pub))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
