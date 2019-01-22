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
    func isMultiple(_ multiple: Int) -> Bool {
        return (multiple % (self.factor * self.secondFactor)) == 0
    }
    
    func playFizzBuzz(with multiple: Int) -> String {
        if self.factor == self.self.secondFactor {
            return String(multiple)
        }
        if isMultiple(multiple) && (self.factor != 1 && self.secondFactor != 1) {
            return "FizzBuzz"
        } else if isMultiple(multiple) && self.factor != 1 {
            return "Fizz"
        } else if isMultiple(multiple) && self.secondFactor != 1 {
            return "Buzz"
        } else {
            return String(multiple)
        }
    }
}
