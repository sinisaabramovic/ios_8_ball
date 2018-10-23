//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Sinisa Abramovic on 18/10/2018.
//  Copyright © 2018 Sinisa Abramovic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var askImage: UIImageView!
    @IBOutlet weak var askLabel1: UILabel!
    var randomBallIndex : Int = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomBallImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomBallImages()
    }
    
    func randomBallImages(){
        let numOfBalls = ballArray.count
        randomBallIndex = Int(arc4random_uniform(UInt32(numOfBalls)))
        askImage.image = UIImage(named: ballArray[randomBallIndex])
    }
}

