//
//  ViewController.swift
//  EnumsFun
//
//  Created by Jim Campagno on 7/20/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var opponentCardLabel: UILabel!
    @IBOutlet weak var playerCardLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var opponentScoreLabel: UILabel!
    @IBOutlet weak var flipCardButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    let gameengine = GameEngine(player1: "Opponent", player2: "Jacq")
    
    @IBAction func flipCard(_ sender: UIButton) {
        
        
        let turn = gameengine.playOneTurn()
        
        opponentCardLabel.text = turn.1?.description
        playerCardLabel.text = turn.2?.description
        winnerLabel.text = "\(turn.0.name) wins!"
        
        
        opponentScoreLabel.text = "Opponent's cards: \(gameengine.player1.hand.size)"
        playerScoreLabel.text = "Jacq's cards: \(gameengine.player2.hand.size)"
        
    }
    
}
