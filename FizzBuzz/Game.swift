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
    
    mutating func play(move: String) -> Bool {
        self.score += 1
        return true
    }
    
}
