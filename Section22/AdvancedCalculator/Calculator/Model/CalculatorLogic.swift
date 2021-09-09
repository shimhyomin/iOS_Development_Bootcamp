//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by shm on 2021/09/09.
//  Copyright © 2021 London App Brewery. All rights reserved.
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
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number * 0.01
        }
        return nil
    }
    
    func num() {
        
        //What should happen when a number is entered into the keypad
//        
//        if let numValue = sender.currentTitle {
//            
//            if isFinishedTypingNumber {
//                displayLabel.text = numValue
//                isFinishedTypingNumber = false
//            } else {
//                
//                if numValue == "." {
//                    
//                    let isInt = floor(displayValue) == displayValue
//                    
//                    if !isInt {
//                        return
//                    }
//                }
//                displayLabel.text! += numValue
//            }
//            
//        }
    }
    
}
