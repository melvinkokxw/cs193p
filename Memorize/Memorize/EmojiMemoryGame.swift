//
// Created by Melvin Kok on 17/1/21.
//

import Foundation

class EmojiMemoryGame {
    private var game: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()

    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃", "🕷"]
        return MemoryGame<String>(numberOfPairOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }

    // MARK: – Access to the Model

    var cards: Array<MemoryGame<String>.Card> {
        game.cards
    }

    // MARK: – Intent(s)

    func choose(card: MemoryGame<String>.Card) {
        game.choose(card: card)
    }
}
