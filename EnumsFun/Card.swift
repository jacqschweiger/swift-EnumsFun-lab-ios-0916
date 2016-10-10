//
//  Card.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

enum Suit: String {
    case Spades = "♠️", Diamonds = "♦️", Hearts = "♥️", Clubs = "♣️"
    static var allCases: [Suit] {
        return [.Spades,.Diamonds,.Hearts,.Clubs]
    }
    
}



enum Rank: Int {
    case two = 2, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace
    
    var stringValue: String {
        switch self.rawValue {
        case 14:
            return "A"
        case 13:
            return "K"
        case 12:
            return "Q"
        case 11:
            return "J"
        default:
            return "\(self.rawValue)"
        }
    }
}



class Card {
    var rank: Rank
    var suit: Suit
    var description: String {
        return "\(rank.stringValue)\(suit.rawValue)"
    }
    
    init(rank: Rank, suit: Suit){
        self.rank = rank
        self.suit = suit
    }
}






