//
//  ViewController.swift
//  Dicee
//
//  Created by admin on 9/14/19.
//  Copyright © 2019 Mar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1" , "dice2" , "dice3" , "dice4" , "dice5" , "dice6"]
    
    
    var randomDiceIndex1: Int = 0 //creates a variable with integer value = 0
    var randomDiceIndex2: Int = 0
// we can create a variable and set it at a later phase
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       updateDiceImages()
    

    }
    
    
    @IBAction func rollButtonPress(_ sender: UIButton) {
      //This will get executed when the roll button gets pressed
        
        updateDiceImages()
    
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)//we want numbers to be generated
        //from zero to 5 randomly
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
}

