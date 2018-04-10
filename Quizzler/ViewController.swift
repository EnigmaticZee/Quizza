//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
   let allQuestion = QuestionBank()
    var pickedAnswer : Bool = false
    var questiomB = 0
    var score : Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questiomB += 1
        nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "Question:  \(questiomB + 1) / 13"
        progressLabel.text = "\(questiomB + 1) / 13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questiomB+1)
    }
    

    func nextQuestion() {
        if questiomB <= 12 {
            questionLabel.text = allQuestion.list[questiomB].questionText
            updateUI()
            
        }
        else {
            let alert = UIAlertController(title: "Awesome", message: "Want to Restart?", preferredStyle: .alert)
            let action = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    func checkAnswer() {
        let correctA = allQuestion.list[0].answer
        if correctA == pickedAnswer {
            print("Correct")
            score += 1
        }
        else {
            print("Wrong")
        }
    }
    
    
    func startOver() {
       questiomB = 0
        score = 0
        nextQuestion()
    }
    

    
}
