//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    var isFinishedTypingNumber = true
    
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
        
        guard let number = Double(displayLabel.text!) else {
            fatalError(" Cannot convert display label taxt to a Double")
        }
        
        if sender.currentTitle == "+/-" {
            displayLabel.text = String(number * -1)
        }
        if sender.currentTitle == "AC" {
            displayLabel.text = "0"
        }
        if sender.currentTitle == "%" {
            displayLabel.text = String(number / 100)
        }
        
        //What should happen when a non-number button is pressed
        
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                displayLabel.text! += numValue
            }
            
        }
        
    }
    
}

