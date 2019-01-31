//
//  Brain.swift
//  FizzBuzz
//
//  Created by beshbashbosh on 22/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import Foundation

struct Brain {
    
    private let factor: Int
    private let secondFactor: Int
    
    init(factor: Int, secondFactor: Int = 1) {
        self.factor = factor
        self.secondFactor = secondFactor
    }
    
    // MARK: - Public API    
    func playFizzBuzz(with value: Int) -> Move {
        if self.factor == self.secondFactor {
            return .number
        }
        
        if value.isMultiple(of: self.factor) && value.isMultiple(of: self.secondFactor) {
            return .fizzBuzz
        } else if value.isMultiple(of: self.factor) {
            return .fizz
        } else if value.isMultiple(of: self.secondFactor) {
            return .buzz
        } else {
            return .number
        }
    }
}
