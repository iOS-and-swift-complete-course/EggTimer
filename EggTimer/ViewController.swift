//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progress: UIProgressView!
    
    let cookTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
//    let cookTimes = ["Soft": 10, "Medium": 20, "Hard": 30]
    var secondsRemaining = 0
    var selectedTime = 0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        if timer.isValid == true {
            print("timer is running")
            return
        }
        progress.isHidden = false
        progress.progress = 0.0
        selectedTime = cookTimes[sender.titleLabel!.text!]!
        secondsRemaining = selectedTime
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }
    
    @objc func fireTimer() {
        secondsRemaining -= 1
        if secondsRemaining >= 0 {
            let p = 1 - Float(secondsRemaining) / Float(selectedTime)
            print(p)
            self.progress.progress = p
            titleLabel.text = "Seconds Remaining: \(secondsRemaining)"
        } else {
            timer.invalidate()
            titleLabel.text = "Done!"
            progress.isHidden = true
        }
    }
}
