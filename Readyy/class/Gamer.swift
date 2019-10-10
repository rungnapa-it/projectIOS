//
//  Gamer.swift
//  Readyy
//
//  Created by Milk on 5/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import Foundation
class Gamer {

    private var id:String
    private var name:String
    private var score:Int
    private var high_score:Int
    private var orderId:Int
    
    init(name:String) {
        self.id = ""
        self.name = name
        self.score = 0
        self.high_score = 0
        self.orderId = 100
    }
    
    func printtest(text:String)  {
        print("class : \(text)")
    }
    func setId() {
        self.id = "G\(getOrderId())"
       setOrderId()

   }
    
    func setOrderId() {
        self.orderId+=1
    }
    
    func setName(name:String)  {
        self.name = name
        print(name)
        //print(gamerJSON())
       
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
    
    func getOrderId() -> Int {
        return orderId
    }
    
   func getJSON() -> String {
        return "[{\"id\":\"\(id)\",\"name\":\"\(name)\",\"score\":\"\(score)\",\"high_score\":\"\(high_score)\"}]";
    }
    
   
    
}

