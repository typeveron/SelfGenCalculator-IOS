//
//  ViewController.swift
//  calculator
//
//  Created by Bechir Mihoub on 2020-01-27.
//  Copyright © 2020 Bechir Mihoub. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    

    var runningNumber = ""
    var leftValue: Int = 0
    var rightValue: Int = 0
    var operation: Int = 0
    var operationSwitch: String = ""
    var answer: Double = 0
    let result = 0.0
    var questionsTotal = 0
    var questionsRight = 0
    var questionsWrong = 0
    var myAnswerArray = [InfoAnswer]()
    var percentage = 0
    var message = ""
    var percentageStringUsed = ""
    var nameLabel = ""
    var perLabel = ""
    var doubleDiv = ""
   
   
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        labelN.text! = nameLabel
      
    
        
        
    }
    
    
    
    
    @IBOutlet weak var labelA: UILabel!
    
    @IBOutlet weak var labelN: UITextField!
    
    
    @IBOutlet weak var labelQ: UILabel!
    
 
    @IBAction func numberPressed(_ sender: UIButton) {
        if runningNumber.count <= 12 {
        runningNumber += "\(sender.tag)"
        labelA.text = runningNumber
    }
    }
    
    
    
    @IBAction func clearMethod(_ sender: UIButton) {
        if runningNumber.count >= 0 {
        runningNumber = ""
        labelA.text = runningNumber
    }
    }
    
    
    
     
    @IBAction func dotPressed(_ sender: UIButton) {
        if runningNumber.count <= 1 {
        runningNumber += "."
        labelA.text = runningNumber
        }
    }
    
    
    @IBAction func negPressed(_ sender: UIButton) {
        if runningNumber.count < 1 {
            runningNumber = "-"
            labelA.text = runningNumber
        }
    }
    
    
   @IBAction func genPressed(_ sender: UIButton) {
    leftValue = Int.random(in: 0 ..< 10)
    rightValue = Int.random(in: 1 ..< 10)
    operation = Int.random(in: 0 ..< 4)
    
    
    switch operation {
    case 0:
        operationSwitch = "+"
    case 1:
        operationSwitch = "-"
    case 2:
        operationSwitch = "*"
    case 3:
        operationSwitch = "/"
    default:
        labelQ.text = ""
        
    }
    
    let question = "\(leftValue) \(operationSwitch) \(rightValue) ?"
    labelQ.text = question
    
}
    
    
    @IBAction func checkPressed(_ sender: UIButton) {
        
        //remember to set answer to 2 decimal places, and not div by 0
        let result = Double(labelA.text!)
        
        
        switch operation {
        case 0:
            answer = Double(leftValue + rightValue)
        case 1:
            answer = Double(leftValue - rightValue)
        case 2:
            answer = Double(leftValue * rightValue)
        case 3:
            answer = Double(leftValue)/Double(rightValue)
            doubleDiv = String(format: "%.2f", answer)
            doubleDiv = String(answer)
        default:
            labelA.text = ""
            
        }
        
       
        
        if answer != result {
            message = "Your wrong 💔"
            labelQ.text = message
            runningNumber = ""
            labelA.text = runningNumber

        } else {
           message = "Your correct ❤️"
           labelQ.text = message
           runningNumber = ""
           labelA.text = runningNumber
        }
    
       
        let info = InfoAnswer(sanswer: answer, yanswer: result!, message: message)
        myAnswerArray.append(info)
        
        
    }
    

    
    @IBAction func getScore(_ sender: UIButton) {
 
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "passArr" {
            if let vc = segue.destination as? ScoreScreenVC {
            vc.theTransferArr = myAnswerArray
                
     
        }
    }
   
    
    
    
    
    
    }
    


}

