//
//  ViewController.swift
//  Magical 8 Ball
//
//  Created by JayaShankar Mangina on 3/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBAction func askButtonClicked(_ sender: UIButton) {
        
        let ballArray = [#imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball5")]
        
        imageView1.image = ballArray[Int.random(in: 0...4)]
    }
    
}

