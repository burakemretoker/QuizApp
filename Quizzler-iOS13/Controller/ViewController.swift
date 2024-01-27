//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var quizBrain = QuizBrain()
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quizBrain.getQuestion()!
        scoreLabel.text = quizBrain.scoreCounter()
        progressBar.progress = quizBrain.progressKeeper()
        trueButton.layer.cornerRadius = 20
        falseButton.layer.cornerRadius = 20

    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        sender.backgroundColor = quizBrain.checkAnswer(for: sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
            sender.backgroundColor = .none
        }
        questionLabel.text = quizBrain.getQuestion()!
        scoreLabel.text = quizBrain.scoreCounter()
        progressBar.progress = quizBrain.progressKeeper()
    }
    
}

