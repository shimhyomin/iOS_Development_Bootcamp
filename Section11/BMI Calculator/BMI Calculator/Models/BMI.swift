//
//  BMI.swift
//  BMI Calculator
//
//  Created by shm on 2021/08/15.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct BMI{
    let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float, advice: String, color: UIColor) {
        self.value = value
        self.advice = advice
        self.color = color
    }
}
