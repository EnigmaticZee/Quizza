//
//  QuestionBank.swift
//  Quizza
//
//  Created by Zaid on 2018-04-10.
//  Copyright © 2018 EnigmaticZee. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Question]();
    
    init() {
        list.append(Question(text: "Lightning never strikes in the same place twice.", correctAnswer: false))
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "If you cry in space the tears just stick to your face.", correctAnswer: true))
        
        list.append(Question(text: "Humans can distinguish between over a trillion different smells.", correctAnswer: true))
        
        list.append(Question(text: "Adults have fewer bones than babies do.", correctAnswer: true))
        
        list.append(Question(text: "Your fingernails and hair keep growing after you die.", correctAnswer: false))
        
        list.append(Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
        
        list.append(Question(text: "Birds are dinosaurs.", correctAnswer: true))
        
        list.append(Question(text: "Water spirals down the plughole in opposite directions in the northern and southern hemispheres.", correctAnswer: false))
        
        list.append(Question(text: "It costs the U.S. Mint more to make pennies and nickels than the coins are actually worth.", correctAnswer: true))
        
        list.append(Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        list.append(Question(text: "Goldfish only have a memory of three seconds.", correctAnswer: false))
        
        list.append(Question(text: "The owner of the company that makes Segways died after accidentally driving his Segway off a cliff.", correctAnswer: true))
        
        list.append(Question(text: "Humans can’t breathe and swallow at the same time.", correctAnswer: true))
    }
}
