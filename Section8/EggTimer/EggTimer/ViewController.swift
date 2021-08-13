//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]

    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }

    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            print("\(counter) seconds.")
            counter -= 1
        }
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        // If Else
//        if hardness == "Soft" {
//            print(softTime)
//        }else if hardness == "Medium" {
//            print(mediumTime)
//        }else{
//            print(hardTime)
//        }
        
        // Switch
//        switch hardness {
//        case "Soft":
//            print(softTime)
//        case "Medium":
//            print(mediumTime)
//        case "Hard":
//            print(hardTime)
//        default:
//            print("Error")
//        }
        
        // Dictionary
        print(eggTimes[hardness])
        
        
        // Countdown Timer
        counter = eggTimes[hardness]!
    }
    
}
