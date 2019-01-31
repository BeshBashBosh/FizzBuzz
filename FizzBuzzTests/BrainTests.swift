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
    
    func testBrainSaysFizzWhenThreeIsOnlyAMultipleOfFirstFactor() {
        let multiple = 3
        let factor1 = 3
        let factor2 = 2
        let sut = Brain(factor: factor1, secondFactor: factor2)
        
        let result = sut.playFizzBuzz(with: multiple)
        XCTAssertEqual(result, Move.fizz, "\(multiple) is a multiple of firstFactor \(factor1) and should say Fizz, says \(result)")
    }
    
    func testBrainSaysBuzzWhenThreeIsOnlyAMultipleOfSecondFactor() {
        let multiple = 3
        let factor1 = 2
        let factor2 = 3
        let sut = Brain(factor: factor1, secondFactor: factor2)
        
        let result = sut.playFizzBuzz(with: multiple)
        XCTAssertEqual(result, Move.buzz, "\(multiple) is a multiple of secondFactor \(factor2) and should say Buzz, says \(result)")
    }
    
    func testBrainSaysFizzBuzzWhen15IsAMultipleOfFirstAndSecondFactor() {
        let multiple = 15
        let factor1 = 3
        let factor2 = 5
        let sut = Brain(factor: factor1, secondFactor: factor2)
        
        let result = sut.playFizzBuzz(with: multiple)
        
        XCTAssertEqual(result, Move.fizzBuzz, "\(multiple) is a multiple of firstFactor \(factor1) and secondFactor \(factor2) and should say FizzBuzz, says \(result)")
    }
    
    func testBrainSaysMultipleWhenNotAThreeAndFiveAreNotFactors() {
        let multiple = 16
        let factor1 = 3
        let factor2 = 5
        let sut = Brain(factor: factor1, secondFactor: factor2)
        
        let result = sut.playFizzBuzz(with: multiple)
        
        XCTAssertEqual(result, Move.number, "\(multiple) is not a multiple of firstFactor \(factor1) or secondFactor \(factor2) so should say \(multiple), says \(result)")
    }
    
    func testPlayingFizzBuzzWithEqualFactorsHasBrainSayingTheMultiple() {
        let multiple = 4
        let factor1 = 2
        let factor2 = 2
        let sut = Brain(factor: factor1, secondFactor: factor2)
        
        let result = sut.playFizzBuzz(with: multiple)
        
        XCTAssertEqual(result, Move.number)
    }

}
