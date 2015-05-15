//
//  ViewController.swift
//  Calculator
//
//  Created by Matthew Parangot on 5/14/15.
//  Copyright (c) 2015 Matthew Parangot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingNumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTypingNumber {
            display.text = display.text! + digit
        }
        else {
            display.text = digit
            userIsInTheMiddleOfTypingNumber = true
        }
    }
    
}

