//
//  Gamer.swift
//  Readyy
//
//  Created by Milk on 5/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.


import Foundation
class Gamer {
    
    private var dict = Dictionary<String,Array<String>>()
    private var id:String
    private var name:String
    private var score:Int
    private var high_score:Int
    private var room:String
    private var status:String
    private var roomOrder:Int
    private var orderId:Int
    
    init(name:String) {
        self.id = ""
        self.name = name
        self.score = 0
        self.high_score = 0
        self.status = ""
        self.room = ""
        self.roomOrder = 0
        self.orderId = 100
        
    }
    
    func setStatus(status:String)  {
        self.status = status
    }
    func getStatus() -> String {
        return status
    }
    func setRoom(){
        self.room = "r\(getRoomOrder())"
        setRoomOrder()
    }
    func setRoomOrder() {
        self.roomOrder+=1
    }
    func getRoomOrder() -> Int {
        return roomOrder
    }
    
    func getRoom() -> String {
        return room
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
        return "[{\"id\":\"\(id)\",\"name\":\"\(name)\",\"score\":\"\(score)\",\"high_score\":\"\(high_score)\",\"room\":\"\(room)\"}]";
    }
    
    func gamerJSON(json:String) {
        subStringGamer.step1(json: json)
    }
    
    func addDictionary(id:String , name:String , score:String , high_score:String ,room:String, status:String)  {
        dict[id] = [name,score,high_score,room,status]
        
    }
    
    
   
    
    
    
}









