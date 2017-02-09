//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    case slow = 1, medium, fast
    
    func isFaster (thanSpeed: Speed) -> Bool {
        guard self.rawValue > thanSpeed.rawValue else {
            return false
        }
        return true
    }
}

enum Diet {
    case meatEater, vegetarian
}

enum Sex {
    case male, female, yesPlease
}

class Trex {
    var speed = Speed.fast
    var diet = Diet.meatEater
    var sex: Sex
    var name = ""
    var isAlive = true
    
    init (name nameIn: String, sex sexIn: Sex ){
        self.name = nameIn
        self.sex = sexIn
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex: Trex) -> Bool {
        return self.speed.rawValue > thanTrex.speed.rawValue
    }
    func eat(otherTrex: Trex) {
        guard self.isFaster(thanTrex: otherTrex) else {return}
        otherTrex.isAlive = false
    }
}

