//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Burak Emre Toker on 27.01.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    
    let question: String
    let answer: String
    
    init(q: String, a: String) {
        self.question = q
        self.answer = a
    }
}


