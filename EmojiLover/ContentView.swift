//
//  ContentView.swift
//  EmojiLover
//
//  Created by Merve Sağır on 29.06.2023.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😍, 😝, 🥳, 🥶
}
struct ContentView: View {
    @State var selectionEmoji: Emoji = .😍
    var body: some View {
        VStack{
            Text(selectionEmoji.rawValue)
                .font(.system(size: 150))
            Picker("Select Emoji", selection: $selectionEmoji) {
                ForEach(Emoji.allCases, id: \.self) {emoji in Text(emoji.rawValue)
                    
                }
            }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
