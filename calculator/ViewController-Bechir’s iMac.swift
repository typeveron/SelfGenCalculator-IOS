//
//  ViewController.swift
//  calculator
//
//  Created by Bechir Mihoub on 2020-01-27.
//  Copyright © 2020 Bechir Mihoub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0;

    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        label.text = label.text! + String(sender.tag-1)
        numberOnScreen = Double(label.text!)!
    }
    
    
    @IBAction func button(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 17 {
            if sender.tag == 12 { 
                
            }
            else if sender.tag == 13 {
                
            }
            else if sender.tag == 14 {
                
            }
            else if sender.tag == 15 {
                
            }
            else if sender.tag == 16 {
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

