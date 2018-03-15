//
//  ViewController.swift
//  8 Ball
//
//  Created by Mihai Badea on 15/03/2018.
//  Copyright © 2018 Mihai Badea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageAnswer: UIImageView!
    let arrayOfAnswers = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnRandomAnswer()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func returnRandomAnswer(){
        imageAnswer.image=UIImage(named: arrayOfAnswers[ Int (arc4random_uniform(5))])

    }
    
    @IBAction func askMeButton(_ sender: UIButton) {
        returnRandomAnswer()
        
    }
}

