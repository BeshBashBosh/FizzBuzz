//
//  Game.swift
//  FizzBuzz
//
//  Created by beshbashbosh on 23/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import Foundation

struct Game {
    
    var score: Int = 0
    private let brain: Brain = Brain(factor: 3, secondFactor: 5)
    
    mutating func play(move: String) -> (correctAnswer: Bool, score: Int) {
        let correctMove = brain.playFizzBuzz(with: self.score + 1)
        
        if move == correctMove {
            self.score += 1
            return (true, self.score)
        }
        
        return (false, self.score)
    }
    
}
