//
//  IntExtensions.swift
//  FizzBuzz
//
//  Created by beshbashbosh on 23/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import Foundation

extension Int {
    func isMultiple(of factor: Int) -> Bool {
        return self % factor == 0
    }
}
