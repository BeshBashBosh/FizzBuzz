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
        // When
        let result = sut.isMultipleOfThree(3)
        // Then
        XCTAssertTrue(result, "3 is not a multiple of 3")
    }

}
