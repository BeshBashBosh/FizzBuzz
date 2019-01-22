//
//  BrainTests.swift
//  FizzBuzzTests
//
//  Created by beshbashbosh on 22/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }

    func testThreeIsMultipleOfThree() {
        // Given
        let sut = Brain()
        let multiple = 3
        let factor = 3
        // When
        let result = sut.isMultiple(multiple, of: factor)
        // Then
        XCTAssertTrue(result, "\(multiple) is not a multiple of \(factor)")
    }

}
