//
//  ViewController.swift
//  FizzBuzz
//
//  Created by beshbashbosh on 22/01/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var game: Game?
    var gameScore: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    func play(move: String) {
        gameScore = 1
    }
    
}

