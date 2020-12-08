//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by muhammad abdul latief on 19/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(text: "Apakah Macbook lebih mahal dari windows?", answer: "True"),
        Question(text: "Apakah Bumi datar?", answer: "False"),
        Question(text: "Apakah dengan Bersyahadat bisa masuk islam?", answer: "True"),
        Question(text: "Apakah babi halal?", answer: "False"),
        Question(text: "Apakah Nabi Muhammad adalah nabi terakhir?", answer: "True")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
}
