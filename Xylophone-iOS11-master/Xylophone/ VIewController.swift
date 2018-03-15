//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController{
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var player : AVAudioPlayer?


    @IBAction func notePressed(_ sender: UIButton) {

        playSound(tagNumber: sender.tag)
    }
    
    func playSound( tagNumber: Int ) {
        
        let url = Bundle.main.url(forResource: "note\(tagNumber)", withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
        
        
        
    }
    
  

}

