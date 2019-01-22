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
    private let secondFactor: Int = 1
    
    // MARK: - Public API
    func isMultiple(_ multiple: Int) -> Bool {
        return (multiple % (self.factor * self.secondFactor)) == 0
    }
    
    func playFizzBuzz(with multiple: Int) -> String {
        if isMultiple(multiple) && (self.secondFactor != 1) {
            return "FizzBuzz"
        } else if isMultiple(multiple) {
            return "Fizz"
        } else if isMultiple(multiple) {
            return "Buzz"
        } else {
            return String(multiple)
        }
    }
}
