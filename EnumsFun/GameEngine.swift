//
//  GameEngine.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class GameEngine {
    var player1: Player
    var player2: Player
    var deck = Deck()
    
    init(player1: String, player2: String) {
        let hand = deck.split()
        
        self.player1 = Player(name: player1, hand: Hand(cards: hand.0))
        self.player2 = Player(name: player2, hand: Hand(cards: hand.1))
    }
    
    func playOneTurn() -> (Player, Card?, Card?) {
        print("Starting play one turn")
        let player1Card = player1.flip()
        print("player1 flips")
        let player2Card = player2.flip()
         print("player2 flips")
        var winner = player1
        
        if player1Card == nil {
            winner = player2
        } else if player2Card == nil {
            winner = player1
        } else if let player1Card = player1Card {
            if let player2Card = player2Card {
                if player1Card.rank.rawValue > player2Card.rank.rawValue {
                    winner = player1
                } else {
                    winner = player2
                }
            }
        }
        print("winner is: \(winner), \(player1Card), \(player2Card)")
        if let player1Card = player1Card{
            if let player2Card = player2Card {
                winner.hand.cards.append(player1Card)
                winner.hand.cards.append(player2Card)
            }
        }
        
        return (winner, player1Card, player2Card)
    }
    
    
    func award(cards: [Card], to player: Player) {
        print("award called")
        for card in cards {
            player.give(card: card)
        }
        
    }
    
    
    func gameOver() -> Bool {
        if player1.hasCards() && player2.hasCards() {
            return false
        } else {
            return true
        }
    }
    
    
    
}







