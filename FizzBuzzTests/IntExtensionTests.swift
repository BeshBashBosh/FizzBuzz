//
//  IntExtensionTests.swift
//  FizzBuzzTests
//
//  Created by beshbashbosh on 23/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class IntExtensionTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThreeIsMultipleOfFactorThree() {
        let factor = 3
        let value = 3
        
        let result = value.isMultiple(of: factor)
        
        XCTAssertTrue(result, "\(value) is a multiple of \(factor)")
    }
    
    func testFiveIsNotMultipleOfThree() {
        let factor = 3
        let value = 5
        
        let result = value.isMultiple(of: factor)
        
        XCTAssertFalse(result, "\(value) is not a multiple of \(factor)")
    }

}
