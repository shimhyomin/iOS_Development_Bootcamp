//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.1f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func calculatorPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        print(bmi)
        
        // SecondViewController에 접근
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", bmi)
        self.present(secondVC, animated: true, completion: nil)
    }
}

