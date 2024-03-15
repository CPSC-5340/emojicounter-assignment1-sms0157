//
//  ContentView.swift
//  emojicounter
//
//  Created by Sabrina Summerfield on 3/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Group {
                ListItem()
                ListItem()
                ListItem()
                ListItem()
                ListItem()
            }
        }
        .navigationTitle("Emoji Counter")
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct ListItem: View {
var emojis = ["😂", "🤩", "😀", "😜", "🤣"]
    @State var counter = 0
    var body: some View {
        HStack {
            List {
                ForEach(emojis, id: \.self) {
                    emoji in EmojiCounter(count: 0, item: emoji)
                }
            }
        }
    }
}

struct EmojiCounter: View {
    @State var count : Int
    var item : String
    var body: some View {
        HStack {
            Text(item)
            Text("Counter: \(count)")
            Button(action: {
                self.count += 1
            }) {
            }
        }
    }
}
#Preview {
    ContentView()
}
