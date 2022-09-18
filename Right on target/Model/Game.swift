//
//  Game.swift
//  Right on target
//
//  Created by Uladzislau Komar on 18.09.22.
//

import Foundation

protocol GameProtocol {
    var score: Int {get}
    var currentSecretValue: Int {get}
    var isGameEnded: Bool {get}
    
    func restartGame()
    func startNewRound()
    func calculateScore(with value: Int)
}

class Game: GameProtocol {
    init ()
    
    func restartGame() {
        <#code#>
    }
    
    func startNewRound() {
        <#code#>
    }
    
    func calculateScore(with value: Int) {
        <#code#>
    }
    
    
}
