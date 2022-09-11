//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    var selectedTime = 0
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        switch sender.titleLabel!.text! {
        case "Soft":
            selectedTime = softTime
        case "Medium":
            selectedTime = mediumTime
        case "Hard":
            selectedTime = hardTime
        default:
            selectedTime = -1
        }
        
        print(selectedTime)
    }
}
