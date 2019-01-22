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
        let factor = 3
        let sut: Brain = Brain(factor: factor)
        let multiple = 3
        // When
        let result = sut.isMultiple(multiple)
        // Then
        XCTAssertTrue(result, "\(multiple) is not a multiple of \(factor)")
    }
    
    func testFiveIsNotMultipleOfThree() {
        // Given
        let factor = 3
        let sut = Brain(factor: factor)
        let multiple = 5
        // When
        let result = sut.isMultiple(multiple)
        // Then
        XCTAssertFalse(result, "\(multiple) is not a multiple of \(factor)")
    }
    
    func test30IsMultipleOfFive() {
        let multiple = 30
        let factor = 5
        let sut = Brain(factor: factor)
        
        let result = sut.isMultiple(multiple)
        
        XCTAssertTrue(result, "\(multiple) is a multiple of \(factor)")
    }
    
    func test1723IsNotMultipleOfFive() {
                let multiple = 1723
        let factor = 5
        let sut = Brain(factor: factor)
        
        let result = sut.isMultiple(multiple)
        
        XCTAssertFalse(result, "\(multiple) is not a multiple of \(factor)")
    }
    
    func test30IsMultipleOfThreeAndFive() {
        let multiple = 30
        let factor1 = 3
        let factor2 = 5
        let sut = Brain(factor: factor1, secondFactor: factor2)
        
        let result = sut.isMultiple(multiple)
        
        XCTAssertTrue(result, "\(multiple) is a multiple of \(factor1) and \(factor2)")
    }
    
    func test30IsMultipleOfFiveAndThree() {
        let multiple = 30
        let factor1 = 5
        let factor2 = 3
        let sut = Brain(factor: factor1, secondFactor: factor2)
        
        let result = sut.isMultiple(multiple)
        
        XCTAssertTrue(result, "\(multiple) is a multiple of \(factor1) and \(factor2)")
    }
    
    func testEightIsNotMultipleOfThreeAndFive() {
        let multiple = 8
        let factor1 = 3
        let factor2 = 5
        let sut = Brain(factor: factor1, secondFactor: factor2)
        
        let result = sut.isMultiple(multiple)
        
        XCTAssertFalse(result, "\(multiple) is not a multiple of \(factor1) and \(factor2)")
    }
    
    func testBrainSaysFizzWhenThreeIsAMultipleOfFirstFactor() {
        let multiple = 3
        let factor1 = 3
        let factor2 = 1
        let sut = Brain(factor: factor1, secondFactor: factor2)
        
        let result = sut.playFizzBuzz(with: multiple)
        XCTAssertEqual(result, "Fizz", "\(multiple) is a multiple of firstFactor \(factor1) and should say Fizz, says \(result)")
    }
    
    func testBrainSaysBuzzWhenThreeIsAMultipleOfSecondFactor() {
        let multiple = 3
        let factor1 = 1
        let factor2 = 3
        let sut = Brain(factor: factor1, secondFactor: factor2)
        
        let result = sut.playFizzBuzz(with: multiple)
        XCTAssertEqual(result, "Buzz", "\(multiple) is a multiple of secondFactor \(factor2) and should say Buzz, says \(result)")
    }
    
    func testBrainSaysFizzBuzzWhen15IsAMultipleOfFirstAndSecondFactor() {
        let multiple = 15
        let factor1 = 3
        let factor2 = 5
        let sut = Brain(factor: factor1, secondFactor: factor2)
        
        let result = sut.playFizzBuzz(with: multiple)
        
        XCTAssertEqual(result, "FizzBuzz", "\(multiple) is a multiple of firstFactor \(factor1) and secondFactor \(factor2) and should say FizzBuzz, says \(result)")
    }
    
    func testBrainSaysMultipleWhenNotAThreeAndFiveAreNotFactors() {
        let multiple = 16
        let factor1 = 3
        let factor2 = 5
        let sut = Brain(factor: factor1, secondFactor: factor2)
        
        let result = sut.playFizzBuzz(with: multiple)
        
        XCTAssertEqual(result, String(multiple), "\(multiple) is not a multiple of firstFactor \(factor1) or secondFactor \(factor2) so should say \(multiple), says \(result)")
    }
    
    func testPlayingFizzBuzzWithEqualFactorsHasBrainSayingTheMultiple() {
        let multiple = 4
        let factor1 = 2
        let factor2 = 2
        let sut = Brain(factor: factor1, secondFactor: factor2)
        
        let result = sut.playFizzBuzz(with: multiple)
        
        XCTAssertEqual(result, String(multiple))
    }

}
