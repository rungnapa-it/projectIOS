//
//  Gamer.swift
//  Readyy
//
//  Created by Milk on 5/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import Foundation
class Gamer {
    var id:String
    var name:String
    var score:Int
    var high_score:Int
    
    init(name:String) {
        self.id = ""
        self.name = name
        self.score = 0
        self.high_score = 0
    }
    
    func setId() {
        self.id = ""
    }
    
    func setName(name:String)  {
        self.name = name
        print(name)
    }
    
    func setScore(score:Int)  {
        self.score += score
    }
    
    func setHigh_score(high_score:Int) {
        self.high_score = high_score
    }
    
    func getId() -> String {
        return id
    }
    
    func getName() -> String {
        return name
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getHigh_score() -> Int {
        return high_score
    }
}


