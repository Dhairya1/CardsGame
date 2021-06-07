//
//  EmojiMemoryGame.swift
//  LearningSwiftUI
//
//  Created by Dhairya Uniyal on 01/06/21.
//  ViewModel

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛴", "🚲", "🛵", "🏍", "🛺", "🚔", "🚍", "🚘", "🚖", "🚂", "🚀", "🛸", "🚁", "🛩", "🚢", "🛶"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 9) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card >{
        return model.cards
    }
    
    // MARK: - INTENTS
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
