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
    @IBOutlet weak var theAmericanoLabel: UILabel!
    
    @IBOutlet weak var theEspressoLabel: UILabel!
    
    @IBOutlet weak var theInformationLabel: UILabel!
    
    @IBOutlet weak var theCapuchinoLabel: UILabel!
    @IBAction func theOkButton() {
        theInformationLabel.text = ""
        theEspressoLabel.text = "espresso"
        theAmericanoLabel.text = "americano"
    }
    
    @IBAction func theEspressoButton() {
        theEspressoLabel.text = ""
        theInformationLabel.text = "espresso works"
    }
    
    @IBAction func theAmericanoButton() {
        theEspressoLabel.text = ""
        theAmericanoLabel.text = ""
        theInformationLabel.text = "americano"
    }
    
    @IBAction func theCapuchinoButton() {
    }
    
    
    
    
    
    
    
}

