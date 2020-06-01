//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Erik Miller on 5/29/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//
import Combine
import SwiftUI

    //MARK: - Class with closure removing return, and type inference (removed pairIndex for _)

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
   //MARK: - Static func to avoid the function running before the instance is created 
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🙂"]
        //let random = Int.random(in: 2..<5)
        return MemoryGame<String>(numberOfPairsOFCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //MARK: - Constraints of Observable object
    
    //var objectWillChange: ObservableObjectPublisher
    
    // MARK: - Access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
    return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
