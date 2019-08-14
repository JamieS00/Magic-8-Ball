//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jamie Singleton on 8/6/19.
//  Copyright © 2019 Jamie Singleton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // holds ball images
    let ballArray = ["ball1" ,"ball2", "ball3" , "ball4" , "ball5"]
    
    
    var randomBallNumber: Int = 0
   

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        newBallImage()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }


    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
        
    }
    
    func newBallImage() {
        randomBallNumber = Int.random(in: 0...4)
        print(randomBallNumber)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        }
    
}

