//
//  ContentView.swift
//  cs193p-learning-swift
//
//  Created by Yaroslav Smalko on 17.10.20.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }
        .foregroundColor(Color.purple)
        .padding()
        .font(viewModel.cards.count > 8 ? Font.body : Font.largeTitle)
    }
}
 
struct CardView: View {
    var card: MemoryGame<String>.Card

    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0).aspectRatio(2/3, contentMode: .fit)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill().aspectRatio(2/3, contentMode: .fit)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
