//
//  ViewController.swift
//  HW2.2_TrafficLightsSB_Anna
//
//  Created by Анна on 03.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var informationButton: UIButton!
    
    var allPressedOnInformationButton = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        informationButton.setTitle("START", for: .normal)
        
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        informationButton.layer.cornerRadius = informationButton.frame.height / 4
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
    }
    
    @IBAction func pressedInformationButton(_ sender: UIButton) {
        
        allPressedOnInformationButton += 1

        if informationButton.currentTitle == "START" {
            informationButton.setTitle("NEXT", for: .normal)
        }
        
        if allPressedOnInformationButton == 1 {
            redLight.alpha = 1
            greenLight.alpha = 0.3
        } else if allPressedOnInformationButton == 2 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if allPressedOnInformationButton == 3 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            allPressedOnInformationButton = 0
        }
    }
}
