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
    let eggTimes = ["Soft": 4, "Medium": 10, "Hard": 180]

    var secondsRemaining = 60
    var timer = Timer()
    
    var totalTime = 0
    var secondsPassed = 0
    
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        titleLabel.text = sender.currentTitle
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
        timer.invalidate()  // timer 초기화해주기! 버튼을 계속 누르면 중복됨
        // secondsRemaining = eggTimes[hardness]!
        totalTime = eggTimes[hardness]!
        secondsPassed = 0
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            let percentageProgress: Float = Float(secondsPassed) / Float(totalTime)
            progressBar.progress = percentageProgress
            
            secondsPassed += 1
        } else {
            timer.invalidate()
            progressBar.progress = 1
            titleLabel.text = "Done!"
        }
    }
    
}
