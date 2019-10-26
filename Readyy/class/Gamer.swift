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
    private var roomId:String
    private var status:String
    private var orderId:Int
    
    init(name:String) {
        self.id = ""
        self.name = name
        self.score = 0
        self.high_score = 0
        self.roomId = ""
        self.orderId = 100
        self.status = ""
        
    }
    
    
    
    func setId() {
        self.id = "G\(getOrderId())"
        setOrderId()
        
    }
    
    func setOrderId() {
        self.orderId+=1
    }
    func setRoomId(roomId:String){
        self.roomId = roomId
    }
    func getRoomId() -> String {
        return roomId
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
    
    func getJSON(id:String,name:String,score:String,high_score:String,roomId:String , status:String) -> String {
        return "[{\"id\":\"\(id)\",\"name\":\"\(name)\",\"score\":\"\(score)\",\"high_score\":\"\(high_score)\",\"roomid\":\"\(roomId)\",\"status\":\"\(status)\"}]";
    }
    
    func gamerJSON(json:String) {
        subStringGamer.step1(json: json)
    }
    
    func addDictionary(id:String , name:String , score:String , high_score:String ,roomId:String ,status:String  )  {
        print("add : roomid \(roomId) , status \(status)")
        dict[id] = [name,score,high_score,status,roomId]
        print(dict)
        
    }
    
    func DictionaryGamer()  {
        for(key,value) in dict{
            getJSON(id: key, name: value[0], score: value[1], high_score: value[2], roomId: value[3],status: value[4])
        }
    }

    
    func getDictionaryGamer() -> [String:Array<String>] {
        
        return dict
        
    }
    
    func getNamePlayersIndex(id:String) -> String{
    
        var namePlayers = ""
        for (key,value) in dict {
            if (key == id){
                for (name) in value{
                    namePlayers = name
                    break
                }
                
            }
        }
            return namePlayers
    }
    
   

    
   
    
    func isName(name:String) -> Bool {
        var bool = false
        for (key,value ) in dict{
            if (value[0] == name){
               bool = true
                break;
                
            }
            
        }
        
        return bool
    }
    func setRoomDictionary(name:String , roomId :String)  {
        var k = "" , array:Array<String> = []
        for (key , value) in dict{
            if (value[0] == name){
                k = key
                break
            }
        }
        print(dict)
        array = dict[k]!
        array[4] = roomId
        dict[k] = array
        print(dict)
        
       
        
    }
    
}









