//
//  Hand.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Hand {
    var cards: [Card]
    var size: Int {
        return cards.count
    }
    
    init(cards: [Card]) {
        self.cards = cards
    }
    
    func flip() -> Card? {
        if self.size == 0 {
            return nil
        } else {
            return cards.removeFirst()
        }
    }
    
    func give(card: Card){
        return cards.append(card)
    }
    
    
    func lose(card: Card) -> Card {
        return cards.removeFirst()
    }
    
}








