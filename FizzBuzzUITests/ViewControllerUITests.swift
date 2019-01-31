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
    var numberButton: XCUIElement!
    var fizzButton: XCUIElement!
    var buzzButton: XCUIElement!
    var fizzBuzzButton: XCUIElement!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app = XCUIApplication()
        numberButton = app.buttons["numberButton"]
        fizzButton = app.buttons["fizzButton"]
        buzzButton = app.buttons["buzzButton"]
        fizzBuzzButton = app.buttons["fizzBuzzButton"]
        
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
        numberButton.tap()
        let newLabel = numberButton.label
        
        XCTAssertEqual(newLabel, "1", "Number button should read '1', reads \(newLabel)")
    }
    
    func test_TapNumberButtonTwice_NumberButtonLabelChangesTo2() {
        numberButton.tap()
        numberButton.tap()
        let newLabel = numberButton.label
        
        XCTAssertEqual(newLabel, "2", "Number button should read '2' after being tapped twice from start, reads \(newLabel)")
    }
    
    func test_TapFizzButton_WhenNumberButtonIsValuePrecedingMultipleOf3_UpdateNumberButton() {
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        let newLabel = numberButton.label
        
        XCTAssertEqual(newLabel, "3", "Number button should read '4' after start game and pressing number twice, the fizz button, reads \(newLabel)")
    }
    
    func test_TapBuzzButton_WhenNumberButtonIsValuePrecedingMultipleOf5_UpdateNumberButton() {
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        let newLabel = numberButton.label
        
        XCTAssertEqual(newLabel, "5", "Number button should read '6' after start game and reaching next number being first multiple of 5 then pressing buzz button, reads \(newLabel)")
    }
    
    func test_TapFizzBuzzButton_WhenNumberButtonPrecedesMultipleOf3AND5_UpdateNumberButton() {
        playTo14()
        fizzBuzzButton.tap()
        let newLabel = numberButton.label
        
        XCTAssertEqual(newLabel, "15", "Number button should read '15' after start game and reaching next number being first multiple of 3 AND 5 then pressing fizzbuzz button, reads \(newLabel)")
    }
    
    private func playTo14() {
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
    }

}
