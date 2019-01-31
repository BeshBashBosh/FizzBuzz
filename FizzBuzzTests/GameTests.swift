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

    func test_GameScore_StartsAtZero() {
        
        let score = sut.score
        
        XCTAssertEqual(score, 0, "Game score should start at 0. Started at \(score)")
    }
    
    func test_GameScoreIncrements_OnPlaying() {
        let scoreBeforePlay = sut.score
        
        _ = sut.play(move: .number)
        let scoreAfterPlay = sut.score
        
        XCTAssertEqual(scoreAfterPlay, scoreBeforePlay + 1, "Score before playing is \(scoreBeforePlay). Score after play should be \(scoreBeforePlay + 1), score is \(scoreAfterPlay)")
        
    }
    
    func test_GameScoreEqual2_OnPlayingNumberTwice() {
        let scoreAtBeginning = sut.score
        
        _ = sut.play(move: .number)
        _ = sut.play(move: .number)
        let scoreAfterPlayingTwice = sut.score
        
        XCTAssertEqual(scoreAfterPlayingTwice, scoreAtBeginning + 2, "Score before playing is \(scoreAtBeginning). Score after playing twice should be \(scoreAtBeginning + 2), score is \(scoreAfterPlayingTwice)")
    }
    
    func test_PlayOfFizz_ReturnsTrue_WhenNextScoreIsMultipleOf_BrainFactorsThreeFive() {
        sut.score = 2
        
        let result = sut.play(move: .fizz).isCorrectAnswer
        print(sut.score)
        
        XCTAssertEqual(result, true, "On playing Fizz when next score will be \(sut.score) should be correct, result is \(result)")
    }
    
    func test_PlayOfFizz_ReturnsFalse_WhenNextScoreIsNotMultipleOf_BrainFactorsThreeFive() {
        sut.score = 1
        
        let result = sut.play(move: .fizz).isCorrectAnswer
        
        XCTAssertEqual(result, false, "On playing Fizz when next score will be \(sut.score) should be incorrect, result is \(result)")
    }
    
    func test_PlayOfBuzz_ReturnsTrue_WhenNextScoreIsMultipleOf_BrainFactorsThreeFive() {
        sut.score = 4
        
        let result = sut.play(move: .buzz).isCorrectAnswer
        
        XCTAssertEqual(result, true, "On playing Buzz when next score will be \(sut.score) should be correct, result is \(result)")
    }
    
    func test_PlayOfBuzz_ReturnsFalse_WhenNextScoreIsNotMultipleOf_BrainFactorsThreeFive() {
        sut.score = 5
        
        let result = sut.play(move: .buzz).isCorrectAnswer
        
        XCTAssertEqual(result, false, "On playing Buzz when next score will be \(sut.score) should be incorrect, result is \(result)")
    }
    
    func test_PlayOfFizzBuzz_ReturnsTrue_WhenNextScoreIsMultipleOf_BrainFactorsThreeFive() {
        sut.score = 14
        
        let result = sut.play(move: .fizzBuzz).isCorrectAnswer
        
        XCTAssertEqual(result, true,
                    "On playing FizzBuzz when next score will be \(sut.score), a multiple of 3 and 5, should be correct, result is \(result)")
    }
    
    func test_PlayOfFizzBuzz_ReturnsFalse_WhenNextScoreIsNotMultipleOf_BrainFactorsThreeFive() {
        sut.score = 13
        
        let result = sut.play(move: .fizzBuzz).isCorrectAnswer
        
        XCTAssertEqual(result, false,
                    "On playing FizzBuzz when next score will be \(sut.score), not a multiple of 3 and 5, should be incorrect, result is \(result)")
    }
    
    func test_PlayOfNumber_ReturnsTrue_WhenNextScoreIsNotMultipleOf_BrainFactorsThreeFive() {
        sut.score = 6
        
        let result = sut.play(move: .number).isCorrectAnswer
        
        XCTAssertEqual(result, true, "On playing '5' when next score will be \(sut.score) should be correct, result is \(result)")
    }
    
    func test_PlayOfNumber_ReturnsFalse_WhenNextScoreIsMultipleOf_BrainFactorsThreeFive() {
        sut.score = 14
        
        let result = sut.play(move: .number).isCorrectAnswer
        
        XCTAssertEqual(result, false, "On playing '15' when next score will be \(sut.score) should be incorrect, result is \(result)")
    }
    
    func test_IfMoveOfFizzIsWrong_ScoreNotIncreased_WithBrainFactorsThreeFive() {
        sut.score = 1
        let startScore = sut.score
        let _ = sut.play(move: .fizz)
        print(sut.score)
        print(startScore)
        XCTAssertEqual(sut.score, startScore, "On playing Fizz on no multiple of brain 3,5, score should not be incremented. Score should be \(startScore), score is \(sut.score)")
    }
    
    func test_IfMoveOfFizzIsCorrect_ScoreIncreasedByOne_WithBrainFactorsThreeFive() {
        sut.score = 2
        let startScore = sut.score
        let _ = sut.play(move: .fizz)
        
        XCTAssertEqual(sut.score, startScore + 1, "On playing Fizz on multiple of brain 3,5, score should incremented. Score should be \(startScore + 1), score is \(sut.score)")
    }
}
