//
//  ViewController.swift
//  FizzBuzz
//
//  Created by beshbashbosh on 22/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    // MARK: - Properties
    var game: Game?
    var gameScore: Int? {
        didSet {
            numberButton.setTitle("\(gameScore ?? 0)", for: .normal)
        }
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        gameScore = game?.score
    }

    // MARK: - API
    func play(move: Move) {
        guard game != nil else {
            print("Game not initialised")
            return
        }
        
        let playResponse = game?.play(move: move)
        gameScore = playResponse?.score
    }
    
    // MARK: - Actions
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton: play(move: .number)
        case fizzButton: play(move: .fizz)
        case buzzButton: play(move: .buzz)
        case fizzBuzzButton: play(move: .fizzBuzz)
        default:
            return
        }
    }
    
}

