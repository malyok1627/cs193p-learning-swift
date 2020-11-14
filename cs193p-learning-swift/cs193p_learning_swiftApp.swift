//
//  cs193p_learning_swiftApp.swift
//  cs193p-learning-swift
//
//  Created by Yaroslav Smalko on 17.10.20.
//

import SwiftUI

@main
struct cs193p_learning_swiftApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
