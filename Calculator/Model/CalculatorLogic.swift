//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Eydde on 06/02/23.
//  Copyright © 2023 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number {
            
            if symbol == "+/-" {
                return n * -1
            }
            if symbol == "AC" {
                return 0
            }
            if symbol == "%" {
                return n / 100
            }
            if symbol == "=" {
                return performTwoNumberCalculation(n2: n)
            }
            intermediateCalculation = (n1: n, calcMethod: symbol)
        }
        return nil
    }
    
    func performTwoNumberCalculation(n2: Double) -> Double? {
        
        if let n1 = intermediateCalculation?.n1,
           let operation = intermediateCalculation?.calcMethod {
            
            switch operation {
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "÷":
                return n1 / n2
            case "×":
                return n1 * n2
            default:
                fatalError("the operation passed in does not match any of the cases")
            }
        }
        return nil
    }
    
}
