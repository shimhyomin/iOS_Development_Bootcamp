//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // change image using "image Literal"
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        
        // "alpha" -> 투명도 조절
        // diceImageView1.alpha = 0.5

    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // Button이 눌리면 동작
        // print on console
        print("Button got tapped.")
        diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
    }
    
}

