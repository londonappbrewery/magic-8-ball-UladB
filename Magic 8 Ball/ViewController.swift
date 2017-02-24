//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by eleni askianaki on 24/02/2017.
//  Copyright © 2017 UB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball5")]
    
    var randomBallNumber : Int = 0
    
    
    //arc4random_uniform(5)
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func buttonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func newBallImage() {//function generating a random number between 0 and 4 and then triggering a new image to be displayed
        randomBallNumber = Int(arc4random_uniform(4))
        imageView.image = ballArray[randomBallNumber]
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }

}

