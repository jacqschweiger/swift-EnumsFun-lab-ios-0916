//
//  Deck.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Deck {
    var cards: [Card] = []
    
    init(){
        for rank in 2...14 {
            for suit in Suit.allCases {
                cards.append(Card(rank: Rank(rawValue: rank)!, suit: Suit(rawValue: suit.rawValue)!))
            }
        }
    }
    
    
    func split() -> ([Card], [Card]) {
        cards.shuffle()
        return cards.split()
    }
        
    
    
}





