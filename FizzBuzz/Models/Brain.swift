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
    func playFizzBuzz(with value: Int) -> String {
        if self.factor == self.secondFactor {
            return String(value)
        }
        
        if value.isMultiple(of: self.factor) && value.isMultiple(of: self.secondFactor) {
            return "FizzBuzz"
        } else if value.isMultiple(of: self.factor) {
            return "Fizz"
        } else if value.isMultiple(of: self.secondFactor) {
            return "Buzz"
        } else {
            return String(value)
        }
    }
}
