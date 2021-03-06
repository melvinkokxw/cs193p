//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Melvin Kok on 17/1/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
