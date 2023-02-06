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
    
    var displayValue: Double {
        get {
            
            guard let currentDisplayValue = Double(displayLabel.text!) else {
                fatalError("cannot convert display label to a Double!")
            }
            return currentDisplayValue
        }
        
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
        
        let calculator = CalculatorLogic(number: displayValue)
        
        guard let result = calculator.calculate(symbol: sender.currentTitle!) else {
            fatalError("The result of the calculation is nil")
        }
        
        displayValue = result
        
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                
                if numValue == "." {
                    
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                    
                }
                
                displayLabel.text! += numValue
            }
            
        }
        
    }
    
}

