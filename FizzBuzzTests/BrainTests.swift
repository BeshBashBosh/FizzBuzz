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

    let sut: Brain = Brain()
    
    override func setUp() {
    }

    override func tearDown() {
    }

    func testThreeIsMultipleOfThree() {
        // Given
        let multiple = 3
        let factor = 3
        // When
        let result = sut.isMultiple(multiple, of: factor)
        // Then
        XCTAssertTrue(result, "\(multiple) is not a multiple of \(factor)")
    }
    
    func testFiveIsNotMultipleOfThree() {
        // Given
        let multiple = 5
        let factor = 3
        // When
        let result = sut.isMultiple(multiple, of: factor)
        // Then
        XCTAssertFalse(result, "\(multiple) is not a multiple of \(factor)")
    }
    
    func test30IsMultipleOfFive() {
        let multiple = 30
        let factor = 3
        
        let result = sut.isMultiple(multiple, of: factor)
        
        XCTAssertTrue(result, "\(multiple) is a multiple of \(factor)")
    }
    
    func test1723IsNotMultipleOfFive() {
        let multiple = 1723
        let factor = 5
        
        let result = sut.isMultiple(multiple, of: factor)
        
        XCTAssertFalse(result, "\(multiple) is not a multiple of \(factor)")
    }
    
    func test30IsMultipleOfThreeAndFive() {
        let multiple = 30
        let factor1 = 3
        let factor2 = 5
        
        let result = sut.isMultiple(multiple, of: factor1, and: factor2)
        
        XCTAssertTrue(result, "\(multiple) is a multiple of \(factor1) and \(factor2)")
    }
    
    func test30IsMultipleOfFiveAndThree() {
        let multiple = 30
        let factor1 = 5
        let factor2 = 3
        
        let result = sut.isMultiple(multiple, of: factor1, and: factor2)
        
        XCTAssertTrue(result, "\(multiple) is a multiple of \(factor1) and \(factor2)")
    }
    
    func testEightIsNotMultipleOfThreeAndFive() {
        let multiple = 8
        let factor1 = 3
        let factor2 = 5
        
        let result = sut.isMultiple(multiple, of: factor1, and: factor2)
        
        XCTAssertFalse(result, "\(multiple) is not a multiple of \(factor1) and \(factor2)")
    }
    
    func testBrainSaysFizzWhenMultipleOfThree() {
        let multiple = 3
        
        let result = sut.playFizzBuzz(with: multiple)
        
        XCTAssertEqual(result, "Fizz", "\(multiple) is a multiple of 3 and should say Fizz, says \(result)")
    }
    
    func testBrainSaysBuzzWhenMultipleOfFive() {
        let multiple = 5
        
        let result = sut.playFizzBuzz(with: multiple)
        
        XCTAssertEqual(result, "Buzz", "\(multiple) is a multiple of 5 and should say Buzz, says \(result)")
    }
    
    func testBrainSaysFizzBuzzWhenMultipleOfThreeAndFive() {
        let multiple = 15
        
        let result = sut.playFizzBuzz(with: multiple)
        
        XCTAssertEqual(result, "FizzBuzz", "\(multiple) is a multiple of 3 and 5, should say FizzBuzz, says \(result)")
    }

}
