//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //By clicking Control option and trackpad,
    //i connected image to the code, this is ,
    //called IBOutlet(Interface Builder Outlet)
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //This is a pre-populated function, in which ,
    //we can write the code we want to execute ,
    //This viewDidLoad method, runs when app View gets
    //loaded
    
    

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        /*diceImageView1.image = #imageLiteral(resourceName: "DiceFive")
        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
 */
        //Initialized an array with variable type of let, as it is not going to change (mutation)
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        //randomElement() is a method that looks into elements and generates random element from them
        diceImageView1.image = diceArray.randomElement()
        
        //random(in: a..c) is a method that generates random element within the given specified range
        diceImageView2.image = diceArray.randomElement()
        
    }
    
}

