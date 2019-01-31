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
    func play(move: String) {
        guard game != nil else {
            print("Game not initialised")
            return
        }
        
        let playResponse = game?.play(move: move)
        gameScore = playResponse?.score
    }
    
    // MARK: - Actions
    @IBAction func numberButtonTapped(_ sender: UIButton) {
        guard let currentScore = gameScore else {
            print("GameScore is nil")
            return
        }
        
        let nextScore = currentScore + 1
        play(move: "\(nextScore)")
    }
    
}

