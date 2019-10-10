//
//  Question.swift
//  Readyy
//
//  Created by Milk on 5/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import Foundation
class Question {
    private var dict = Dictionary<String,Array<String>>()
    private var id:String
    private var name:String
    private var ans:String
    private var point:Int
    private var room:String
    private var questionOrder:Int
    private var roomOrder:Int
    
    
    init() {
        self.id = ""
        self.name = ""
        self.ans = ""
        self.point = 10
        self.questionOrder = 100
        self.room = ""
        self.roomOrder = 100
        
    }
    
    func setRoom(){
        self.room = "r\(getRoomOrder())"
        setRoomOrder()
    }
    func setRoomOrder() {
        self.roomOrder+=1
    }
    func getRoomOrder() -> String {
        return "\(roomOrder)"
    }
    func setId(){
        self.id = "d\(getQuestionOrder())"
        setQuestionOrder()
    }
    
    func setQuestionOrder(){
        self.questionOrder+=1
    }
    func setName(name:String)  {
        self.name = name
       
    }
    
    func setAns(ans:String)  {
        self.ans = ans
        //print("Ans: \(ans)")
    }
    
    func setPoint(point:Int){
        self.point = point
    }
    
    func getId() -> String {
        return id
    }
    
    func getName() -> String {
        print("getName: \(name)")
        return name
    }
    
    func  getAns() -> String {
        return ans
    }
    
    func getPoin() -> Int{
        return point
    }
    
    func getQuestionOrder() -> Int{
        return questionOrder
    }
    func getRoom() -> String {
        return room
    }
    func getJSON() -> String {
        return "[{\"id\":\"\(id)\",\"name\":\"\(name)\",\"ans\":\"\(ans)\",\"point\":\"\(point)\",\"room\":\"\(room)\"}]";
    }
    
    func questionJSON(json:String) {
       
        subStringQuestion.step1(json: json)
    }
    
    
    func addDictionary(id:String , name:String , ans:String , point:String)  {
       
        dict[id] = [name,ans,"10"]
        
       // print("-------- \(dict)\n")
    }
    func getDictionare() {
        print("\(dict)")
    }
    
    
    
    
    
}
