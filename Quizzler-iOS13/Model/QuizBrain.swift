//
//  quizBrain.swift
//  Quizzler-iOS13
//
//  Created by Burak Emre Toker on 27.01.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit


struct QuizBrain {
    
    let questions = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumber = 0
    var currentQuestion: Question?
    var currentScore = 0
    
    // We use mutating because inside of struct, properties are immutable!
    mutating func getQuestion() -> String? {
        if questionNumber < questions.count {
            currentQuestion = questions[questionNumber]
            return currentQuestion?.question
        } else {
            return "All the questions are completed!"
        }
        
    }
    
    mutating func checkAnswer(for userAnswer: String) -> UIColor {
        if userAnswer == currentQuestion?.answer {
            currentScore += 1
            questionNumber += 1
            print("True")
            return #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        } else {
            print("False")
            currentScore -= 1
            questionNumber += 1
            return #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        }
        
    }
    
    func scoreCounter() -> String {
        return "Score: \(currentScore)"
    }
    
    func progressKeeper() -> Float {
        return Float(questionNumber) / Float(questions.count)
    }
    
}
