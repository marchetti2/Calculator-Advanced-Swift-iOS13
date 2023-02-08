//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Eydde on 06/02/23.
//  Copyright © 2023 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var number: Double?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        
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
            
        }
        return nil
    }
    
}
