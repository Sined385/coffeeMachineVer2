//
//  ViewController.swift
//  coffeeMachineVer2
//
//  Created by mac on 26.07.2018.
//  Copyright © 2018 SINED. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var coffee = CoffeeMachine.init(waterPortions: 10, cofeePortions: 10, milkPortions: 10, donePortionsNumber: 10)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theInformationLabel.text = "choose your drink"
    }
    
    
    @IBOutlet weak var theInformationLabel: UILabel!
    
    
    
    
    
}

