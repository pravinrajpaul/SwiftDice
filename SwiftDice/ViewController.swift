//
//  ViewController.swift
//  SwiftDice
//
//  Created by Pravin Raj Paul Raveendran on 08/03/24.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!
    @IBOutlet weak var welcome: UIImageView!
    
    let diceArr = ["1","2","3","4","5","6"]
    let tableTheme = ["RedTable","GreenTable","JeansTable","MatTable","WallTable"]
    let diceTheme = ["White","Red","Black"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backGround.image = UIImage(imageLiteralResourceName: "RedTable")
        welcome.image = UIImage(imageLiteralResourceName: "VegasWelcome")
        diceOne.image = UIImage(imageLiteralResourceName: "Black1")
        diceTwo.image = UIImage(imageLiteralResourceName: "Black1")
    }

    @IBAction func rollDiceTapped(_ sender: UIButton) {
        
        var random = Int.random(in: 0...5)
        let diceOneNumber = diceArr[random]
        random = Int.random(in: 0...5)
        let diceTwoNumber = diceArr[random]
        diceOne.image = UIImage(imageLiteralResourceName: "Black"+diceOneNumber)
        diceTwo.image = UIImage(imageLiteralResourceName: "Black"+diceTwoNumber)
    }
    
    @IBAction func settingsTapped(_ sender: UIButton) {
        
    }
}

