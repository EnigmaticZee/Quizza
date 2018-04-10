//
//  Question.swift
//  Quizza
//
//  Created by Zaid on 2018-04-09.
//  Copyright © 2018 EnigmaticZee. All rights reserved.
//

import Foundation

class Question {
    let questionText : String;
    let answer : Bool;
    
    init(text : String, correctAnswer : Bool){
        questionText = text;
        answer = correctAnswer;
    }
}
