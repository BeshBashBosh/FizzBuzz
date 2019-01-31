//
//  ViewControllerTests.swift
//  FizzBuzzTests
//
//  Created by beshbashbosh on 30/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerTests: XCTestCase {

    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        viewController = (storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController)
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        XCTAssertNotNil(viewController.view, "ViewController not initialised for testing")
    }

    override func tearDown() {
    }

    func test_ViewController_hasAGame() {
        XCTAssertNotNil(viewController.game, "ViewController does not have a game initialised")
    }
    
    func test_Move1_IncrementsGameScoreTo1() {
        
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 1, "After playing 'Number`, score should be 1, score is \(newScore)")
    }
    
    func test_Move1andMove2_IncrementsScoreTo2() {
        
        viewController.play(move: .number)
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 2, "After playing move 1 'Number', and move 2 'Number', score should 2, score is \(newScore)")
    }
    
    func test_MoveFizz_IncrementsScoreWhenCorrect() {
        viewController.game?.score = 2
        
        let oldScore = viewController.game?.score
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, (oldScore ?? 0) + 1, "On playing 'Fizz' when next value up from \(oldScore) is multiple of 3, new score should be \((oldScore ?? 0) + 1), new score is \(newScore)")
    }
    
    func test_MoveBuzz_IncrementsScoreWhenCorrect() {
        viewController.game?.score = 4
        
        let oldScore = viewController.game?.score
        viewController.play(move: .buzz)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, (oldScore ?? 0) + 1, "On playing 'Buzz' when next value up from \(oldScore) is multiple of 5, new score should be \((oldScore ?? 0) + 1), new score is \(newScore)")
    }
    
    func test_MoveFizzBuzz_IncrementsScoreWhenCorrect() {
        viewController.game?.score = 14
        
        let oldScore = viewController.game?.score
        viewController.play(move: .fizzBuzz)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, (oldScore ?? 0) + 1, "On playing 'FizzBuzz' when next value up from \(oldScore) is multiple of 3 and 5, new score should be \((oldScore ?? 0) + 1), new score is \(newScore)")
    }
    
    func test_MoveFizz_DoesNotIncrementsScore_WhenIncorrect() {
        viewController.game?.score = 1
        
        let oldScore = viewController.game?.score
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, (oldScore ?? 0), "On playing 'Fizz' when next value up from \(oldScore) is not a multiple of 3, new score should be \(oldScore ?? 0), new score is \(newScore)")
    }
    
    func test_MoveBuzz_DoesNotIncrementsScore_WhenIncorrect() {
        viewController.game?.score = 3
        
        let oldScore = viewController.game?.score
        viewController.play(move: .buzz)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, (oldScore ?? 0), "On playing 'Buzz' when next value up from \(oldScore) is not a multiple of 5, new score should be \(oldScore ?? 0), new score is \(newScore)")
    }
    
    func test_MoveFizzBuzz_DoesNotIncrementsScore_WhenIncorrect() {
        viewController.game?.score = 13
        
        let oldScore = viewController.game?.score
        viewController.play(move: .fizzBuzz)
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, (oldScore ?? 0), "On playing 'FizzBuzz' when next value up from \(oldScore) is not a multiple of 3 and 5, new score should be \(oldScore ?? 0), new score is \(newScore)")
    }
    
}
