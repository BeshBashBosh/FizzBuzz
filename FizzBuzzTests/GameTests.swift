//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by beshbashbosh on 23/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {

    var sut: Game = Game()
    
    override func setUp() {
    }

    override func tearDown() {
    }

    func testGameScoreStartsAtZero() {
        
        let score = sut.score
        
        XCTAssertEqual(score, 0, "Game score should start at 0. Started at \(score)")
    }
    
    func testGameScoreIncrementsOnPlaying() {
        let scoreBeforePlay = sut.score
        
        sut.play()
        let scoreAfterPlay = sut.score
        
        XCTAssertEqual(scoreAfterPlay, scoreBeforePlay + 1, "Score before playing is \(scoreBeforePlay). Score after play should be \(scoreBeforePlay + 1), score is \(scoreAfterPlay)")
        
    }
    
}
