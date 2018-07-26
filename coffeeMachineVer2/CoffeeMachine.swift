//
//  CoffeeMachine.swift
//  coffeeMachineVer2
//
//  Created by mac on 26.07.2018.
//  Copyright © 2018 SINED. All rights reserved.
//

import UIKit

class CoffeeMachine: NSObject {
    
    var waterPortions: Int
    var coffeePortions: Int
    var milkPortions: Int
    var donePortionsNumber: Int
    
    init(waterPortions: Int, cofeePortions: Int, milkPortions: Int, donePortionsNumber: Int) {
        self.waterPortions = waterPortions
        self.milkPortions = milkPortions
        self.donePortionsNumber = donePortionsNumber
        self.coffeePortions = cofeePortions
    }
    
    
    
    func spendWater() {
        waterPortions = waterPortions - 1
    }
    
    func spendCofee() {
        coffeePortions = coffeePortions - 1
    }
    
    func spendMilk() {
        milkPortions = milkPortions - 1
    }
    
    func donePortion() {
        donePortionsNumber = donePortionsNumber - 1
    }
    
    func checkCoffee() -> Bool {
        var noCofee = true
        if coffeePortions == 0 {
            noCofee = false
            return noCofee
        }
        return noCofee
    }
    
    func checkWater() -> Bool {
        var noWater = true
        if waterPortions == 0 {
            noWater = false
        }
        return noWater
    }
    
    func checkMilk() -> Bool {
        var noMilk = true
        if milkPortions == 0 {
            noMilk = false
            return noMilk
        }
        return noMilk
    }
    
    func checkDonePortionsNumber() -> Bool {
        var needToClean = true
        if donePortionsNumber == 0 {
            needToClean = false
            return needToClean
        }
        return needToClean
    }
    
    func espresso() {
        spendWater()
        spendCofee()
        donePortion()
    }
    
    func capuccino() {
        spendWater()
        spendCofee()
        spendMilk()
        donePortion()
    }
    
    func americano() {
        spendWater()
        spendWater()
        spendCofee()
        donePortion()
    }
    
    
    func addWhater(number: Int) {
        waterPortions = number
    }
    
    func addMilk(number: Int) {
        milkPortions = number
    }
    
    func addCofee(number: Int) {
        coffeePortions = number
    }
    
    func cleanMachine(number: Int) {
        donePortionsNumber = number
    }
    
    
    
}
