//
//  EmojiMemoryGame.swift
//  cs193p-learning-swift
//
//  Created by Yaroslav Smalko on 22.10.20.
//

import SwiftUI

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🕸", "🎃", "👻"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - access to the model
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
