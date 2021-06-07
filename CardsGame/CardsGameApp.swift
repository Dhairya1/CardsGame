//
//  CardsGameApp.swift
//  CardsGame
//
//  Created by Dhairya Uniyal on 07/06/21.
//

import SwiftUI

@main
struct CardsGameApp: App {
    private let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
