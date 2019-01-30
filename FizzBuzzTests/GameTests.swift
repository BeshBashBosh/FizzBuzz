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
        
        _ = sut.play(move: "1")
        let scoreAfterPlay = sut.score
        
        XCTAssertEqual(scoreAfterPlay, scoreBeforePlay + 1, "Score before playing is \(scoreBeforePlay). Score after play should be \(scoreBeforePlay + 1), score is \(scoreAfterPlay)")
        
    }
    
    func testGameScoreEqual2OnPlayingTwice() {
        let scoreAtBeginning = sut.score
        
        _ = sut.play(move: "1")
        _ = sut.play(move: "2")
        let scoreAfterPlayingTwice = sut.score
        
        XCTAssertEqual(scoreAfterPlayingTwice, scoreAtBeginning + 2, "Score before playing is \(scoreAtBeginning). Score after playing twice should be \(scoreAtBeginning + 2), score is \(scoreAfterPlayingTwice)")
    }
    
    func testIfPlayOfFizzReturnsTrueWhenNextScoreIsMultipleOfBrainFactorsThreeFive() {
        sut.score = 2
        
        let result = sut.play(move: "Fizz")
        print(sut.score)
        
        XCTAssertEqual(result, true, "On playing Fizz when next score will be \(sut.score) should be correct, result is \(result)")
    }
    
    func testIfPlayOfFizzReturnsFalseWhenNextScoreIsNotMultipleOfBrainFactorsThreeFive() {
        sut.score = 1
        
        let result = sut.play(move: "Fizz")
        
        XCTAssertEqual(result, false, "On playing Fizz when next score will be \(sut.score) should be incorrect, result is \(result)")
    }
    
    func testIfPlayOfBuzzReturnsTrueWhenNextScoreIsMultipleOfBrainFactorsThreeFive() {
        sut.score = 4
        
        let result = sut.play(move: "Buzz")
        
        XCTAssertEqual(result, true, "On playing Buzz when next score will be \(sut.score) should be correct, result is \(result)")
    }
    
    func testIfPlayOfBuzzReturnsFalseWhenNextScoreIsNotMultipleOfBrainFactorsThreeFive() {
        sut.score = 5
        
        let result = sut.play(move: "Buzz")
        
        XCTAssertEqual(result, false, "On playing Buzz when next score will be \(sut.score) should be incorrect, result is \(result)")
    }
    
    func testIfPlayOfFizzBuzzReturnsTrueWhenNextScoreIsMultipleOfBrainFactorsThreeFive() {
        sut.score = 14
        
        let result = sut.play(move: "FizzBuzz")
        
        XCTAssertEqual(result, true,
                    "On playing FizzBuzz when next score will be \(sut.score), a multiple of 3 and 5, should be correct, result is \(result)")
    }
    
    func testIfPlayOfFizzBuzzReturnsFalseWhenNextScoreIsNotMultipleOfBrainFactorsThreeFive() {
        sut.score = 13
        
        let result = sut.play(move: "FizzBuzz")
        
        XCTAssertEqual(result, false,
                    "On playing FizzBuzz when next score will be \(sut.score), not a multiple of 3 and 5, should be incorrect, result is \(result)")
    }
    
    func testIfPlayOfNumberBuzzReturnsTrueWhenNextScoreIsNotMultipleOfBrainFactorsThreeFive() {
        sut.score = 6
        
        let result = sut.play(move: "7")
        
        XCTAssertEqual(result, true, "On playing '5' when next score will be \(sut.score) should be correct, result is \(result)")
    }
    
    func testIfPlayOfNumberReturnsFalseWhenNextScoreIsMultipleOfBrainFactorsThreeFive() {
        sut.score = 14
        
        let result = sut.play(move: "15")
        
        XCTAssertEqual(result, false, "On playing '15' when next score will be \(sut.score) should be incorrect, result is \(result)")
    }
    
    func test_IfMoveOfFizzIsWrong_ScoreNotIncreased_WithBrainFactorsThreeFive() {
        sut.score = 1
        let startScore = sut.score
        let _ = sut.play(move: "Fizz")
        print(sut.score)
        print(startScore)
        XCTAssertEqual(sut.score, startScore, "On playing Fizz on no multiple of brain 3,5, score should not be incremented. Score should be \(startScore), score is \(sut.score)")
    }
    
    func test_IfMoveOfFizzIsCorrect_ScoreIncreasedByOne_WithBrainFactorsThreeFive() {
        sut.score = 2
        let startScore = sut.score
        let _ = sut.play(move: "Fizz")
        
        XCTAssertEqual(sut.score, startScore + 1, "On playing Fizz on multiple of brain 3,5, score should incremented. Score should be \(startScore + 1), score is \(sut.score)")
    }
}
