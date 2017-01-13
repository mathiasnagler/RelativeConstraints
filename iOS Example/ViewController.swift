//
//  ViewController.swift
//  iOS Example
//
//  Created by Mathias Nagler on 13.01.17.
//  Copyright © 2017 Mathias Nagler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var leadingConstraint: NSLayoutConstraint!
    
    @IBAction func sliderValueChanged(slider: UISlider) {
        leadingConstraint.constant = CGFloat(slider.value)
    }

}

