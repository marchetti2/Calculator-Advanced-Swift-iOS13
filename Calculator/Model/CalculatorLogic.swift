//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Eydde on 06/02/23.
//  Copyright © 2023 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        
        if symbol == "+/-" {
            return number * -1
        }
        if symbol == "AC" {
            return 0
        }
        if symbol == "%" {
            return number / 100
        }
        
        return nil
    }
    
}
