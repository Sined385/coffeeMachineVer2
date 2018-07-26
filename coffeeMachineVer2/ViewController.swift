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
    
    let homeScreenWriting = "choose your drink"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theInformationLabel.text = homeScreenWriting
        currentState()
    }
    @IBOutlet weak var theAmericanoLabel: UILabel!
    
    @IBOutlet weak var theEspressoLabel: UILabel!
    
    @IBOutlet weak var theInformationLabel: UILabel!
    
    @IBOutlet weak var theCapuchinoLabel: UILabel!
    
    @IBOutlet weak var coffeeLeftLabel: UILabel!
    
    @IBOutlet weak var coffeeNumberLeftLabel: UILabel!
    
    @IBOutlet weak var milkLeftNumberLabel: UILabel!
    
    @IBOutlet weak var waterLeftNumberLabel: UILabel!
    
    @IBOutlet weak var theUntilCleanLabel: UILabel!
    
    @IBOutlet weak var addWaterLabel: UILabel!
    
    @IBOutlet weak var addMilkLabel: UILabel!
    
    @IBOutlet weak var addCoffeeLabel: UILabel!
    
    
    @IBAction func addWaterButton() {
        if homeScreen() == true {
            return
        }
        coffee.waterPortions = 10
        currentState()
    }
    

    @IBAction func addMilkButton() {
        if homeScreen() == true {
            return
        }
        coffee.milkPortions = 10
        currentState()
    }
    
    @IBAction func addCoffeeButton() {
        if homeScreen() == true {
            return
        }
        coffee.coffeePortions = 10
        currentState()
    }
    
    
    @IBAction func theCleanButton() {
        if homeScreen() == true {
            return
        }
        coffee.donePortionsNumber = 10
        currentState()
    }
    
    
    @IBAction func theOkButton() {
        theInformationLabel.text = ""
        theEspressoLabel.text = "espresso"
        theAmericanoLabel.text = "americano"
        theCapuchinoLabel.text = "capuchino"
        addWaterLabel.text = "add water"
        addMilkLabel.text = "add milk"
        addCoffeeLabel.text = "add coffee"
    }
    
    @IBAction func theEspressoButton() {
        if homeScreen() == true {
            return
        }
        cleanLabels()
        if homeScreen() == true {
            return
        }
        cleanLabels()
        if checkIngredients() == false {
            return
        }
        else {
            coffee.espresso()
            cleanLabels()
            theInformationLabel.text = "your espresso"
        }
        currentState()
    }
    
    @IBAction func theAmericanoButton() {
        if homeScreen() == true {
            return
        }
        cleanLabels()
        if homeScreen() == true {
            return
        }
        cleanLabels()
        if checkIngredients() == false {
            return
        }
        else {
            coffee.americano()
            cleanLabels()
            theInformationLabel.text = "your americano"
        }
        currentState()
    }
    
    @IBAction func theCapuchinoButton() {
        if homeScreen() == true {
            return
        }
        cleanLabels()
        if checkIngredients() == false {
            return
        }
        else {
            coffee.capuccino()
            cleanLabels()
            theInformationLabel.text = "your capuchino"
        }
        currentState()
    }
    
    func cleanLabels() {
        theAmericanoLabel.text = ""
        theEspressoLabel.text = ""
        theCapuchinoLabel.text = ""
        addWaterLabel.text = ""
        addMilkLabel.text = ""
        addCoffeeLabel.text = ""
        
    }
    
    func checkIngredients() -> Bool {
        var makeCoffee = true
        
        if coffee.waterPortions == 0 {
            cleanLabels()
            theInformationLabel.text = "add whater"
            makeCoffee = false
            return makeCoffee
        }
        
        if coffee.milkPortions == 0 {
            cleanLabels()
            theInformationLabel.text = "add milk"
            makeCoffee = false
            return makeCoffee
        }
        
        if coffee.coffeePortions == 0 {
            cleanLabels()
            theInformationLabel.text = "add coffee"
            makeCoffee = false
            return makeCoffee
        }
        
        if coffee.donePortionsNumber == 0 {
            cleanLabels()
            theInformationLabel.text = "clean me"
            makeCoffee = false
            return makeCoffee
        }
        
        return makeCoffee
    }
    
    func homeScreen() -> Bool {
        var homeScreen = false
        if theInformationLabel.text != "" {
            homeScreen = true
            return homeScreen
        }
        return homeScreen
    }
    
    func currentState() {
        coffeeNumberLeftLabel.text = String(coffee.coffeePortions)
        milkLeftNumberLabel.text = String(coffee.milkPortions)
        waterLeftNumberLabel.text = String(coffee.waterPortions)
        theUntilCleanLabel.text = String(coffee.donePortionsNumber)
    }
    
    
    func ifSomethingWrong() {
        
    }
    
    
    
}

