//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let cookTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    var runCount = 0
    var timer : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        if timer != nil && timer!.isValid == true {
            print("timer is running")
            return
        }
        
        print("[\(cookTimes[sender.titleLabel!.text!]!)]")
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }
    
    @objc func fireTimer() {
        runCount += 1
        print(runCount)
        if runCount > 5 {
            timer!.invalidate()
            runCount = 0
        }
    }
}
