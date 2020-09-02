//
//  ViewController.swift
//  GuessFlag
//
//  Created by Truong Nguyen on 9/2/20.
//  Copyright © 2020 Truong Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        countries.append("estonia")
//        countries.append("france")
//        countries.append("germany")
//        countries.append("ireland")
//        countries.append("italy")
//        countries.append("monaco")
//        countries.append("nigeria")
//        countries.append("poland")
//        countries.append("russia")
//        countries.append("spain")
//        countries.append("uk")
//        countries.append("us")
        
        countries += ["estonia", "france", "germany", "ireland", "italy",
                "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1 // 1 is 1 point, automatically resize to 2 or 3 in retina and HD retina screen
        button2.layer.borderWidth = 1 // layer is a lower layer of CG Layer, button know this layer = UIKit
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor =  UIColor.lightGray.cgColor // any color must auto convert to cgColor
        button2.layer.borderColor =  UIColor.lightGray.cgColor
        button3.layer.borderColor =  UIColor.lightGray.cgColor
        
        setUpFlag()
    }
    
    func setUpFlag() {
        
        // 1. show image inside Button
        button1.setImage(UIImage(named: countries[0]), for: .normal) // normal is UIControl State, what state button should be
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }


}

