//
//  Brain.swift
//  FizzBuzz
//
//  Created by beshbashbosh on 22/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import Foundation

struct Brain {
    
    // MARK: - Public API
    func isMultiple(_ multiple: Int, of factor: Int, and secondFactor: Int = 1) -> Bool {
        return (multiple % factor) == 0
    }
    
    func playFizzBuzz(with multiple: Int) -> String {
        if isMultiple(multiple, of: 3, and: 5)
        if isMultiple(multiple, of: 3) {
            return "Fizz"
        } else if isMultiple(multiple, of: 5) {
            return "Buzz"
        } else {
            return ""
        }
    }
}
