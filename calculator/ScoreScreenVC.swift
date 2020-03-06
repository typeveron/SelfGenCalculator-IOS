//
//  ScoreScreenVC.swift
//  calculator
//
//  Created by Bechir Mihoub on 2020-02-01.
//  Copyright © 2020 Bechir Mihoub. All rights reserved.
//

import UIKit

class ScoreScreenVC: UIViewController {
    
    
    var theTransferArr = [InfoAnswer]()
    
    
    
    var questionsTotal = 0
    var questionsRight = 0
    var percentage = 0
    var percentageString = ""
    var theName = ""
    var percentageStringA = ""
    var yourScore = ""
    var anotherScore = ""
    var extraScore = ""
    
     
    
    
    @IBOutlet weak var theRes: UILabel!
    
    @IBOutlet weak var textAns: UITextView!
    
    
    override func viewDidLoad() {
        calPercentage()
        showAll()
        super.viewDidLoad()
    
        }
    

    
    func calPercentage()  {
        questionsTotal = theTransferArr.count
        print ("This is how many questions I have \(questionsTotal)")
        for oneAns in theTransferArr {
            if oneAns.message == "Your correct ❤️" {
                questionsRight = questionsRight + 1
            }
            }
        
        print("This is how many questions I have right \(questionsRight)")
        percentage = (questionsRight * 100/questionsTotal)
        print(percentage)
        percentageString = String(percentage)
        percentageStringA = "\(percentageString)%"
        theRes.text = percentageStringA
        
        }
    

    
    
    @IBAction func rightAns(_ sender: UIButton) {
        textAns.text = ""
        for oneAns in theTransferArr {
            if oneAns.message == "Your correct ❤️" {
                 anotherScore += "\(oneAns) \n"
            }
        }
        print(yourScore)
        textAns.text = anotherScore
    }
    
    
    @IBAction func wrongAns(_ sender: UIButton) {
        textAns.text = ""
        for oneAns in theTransferArr {
            if oneAns.message == "Your wrong 💔" {
                  extraScore += "\(oneAns) \n"
            }
        }
        print(yourScore)
        textAns.text = extraScore
    }
    
    func showAll() {
        for oneAns in theTransferArr {
            yourScore += "\(oneAns) \n"
        }
        print(yourScore)
        textAns.text = yourScore
        
    }
    

    
    @IBAction func goBack(_ sender: UIButton) {
        self.theName = (nameField.text!)
        performSegue(withIdentifier: "passName", sender: self)
        }
    
    @IBOutlet weak var nameField: UITextField!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "passName" {
        if let vc = segue.destination as? ViewController {
        vc.nameLabel = self.theName
 
            }
        }
            
}
}


    
    
    




