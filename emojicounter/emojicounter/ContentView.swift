//
//  ContentView.swift
//  emojicounter
//
//  Created by Sabrina Summerfield on 3/14/24.
//

import SwiftUI

struct ContentView: View {
  
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
        .navigationTitle("Emoji Counter")
                .navigationBarTitleDisplayMode(.inline)
    }
}

struct EmojiCounter: View {
    @State var count : Int
    var item : String
    var body: some View {
        HStack {
            Text(item)
            Text("Counter: \(count)")
            
            Spacer()
            
            Button(action: { self.count += 1
            }) {
                HStack {
                    Image(systemName: "plus")
                        .font(.body)
                        .fontWeight(.semibold)
                }
                .padding()
                .foregroundColor(.black)
                .background(Color.white)
                .cornerRadius(16)
                
                Spacer()
                
                Button(action: { self.count -= 1
                }) {
                    HStack {
                        Image(systemName: "minus")
                            .font(.body)
                            .fontWeight(.semibold)
                    }
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(16)
                }
            }
        }
    }
}
    #Preview {
        ContentView()
    }
    

