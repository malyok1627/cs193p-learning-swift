//
//  EmojiMemoryGame.swift
//  cs193p-learning-swift
//
//  Created by Yaroslav Smalko on 22.10.20.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🕸", "🎃", "👻", "💀", "🧙🏼‍♀️"]
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2..<6)) { pairIndex in emojis[pairIndex]   }
    }
        
    // MARK: - access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        objectWillChange.send()
        model.choose(card: card)
    }
}
