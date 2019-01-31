//
//  ViewControllerUITests.swift
//  FizzBuzzUITests
//
//  Created by beshbashbosh on 31/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {

    var app: XCUIApplication!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app = XCUIApplication()
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_TapNumberButton_NumberButtonLabelChangesTo1() {
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        let newLabel = numberButton.label
        
        XCTAssertEqual(newLabel, "1", "Number button should read '1', reads \(newLabel)")
    }
    
    func test_TapNumberButtonTwice_NumberButtonLabelChangesTo2() {
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        let newLabel = numberButton.label
        
        XCTAssertEqual(newLabel, "2", "Number button should read '2' after being tapped twice from start, reads \(newLabel)")
    }

}
