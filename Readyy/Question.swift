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
       
        print("Question : \(name)")
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
    func getJSON() -> String {
        return "[{\"id\":\"\(id)\",\"name\":\"\(name)\",\"ans\":\"\(ans)\",\"point\":\"\(point)\",\"room\":\"\(room)\"b}]";
    }
    
    func questionJSON(json:String) {
       
        step1(json: json)
    }
    
    func step1(json:String)  {
        var strArray = json.components(separatedBy: "},")
        for i in 0..<strArray.endIndex{
            var part1 = strArray[i]
            step2(json: part1)
        }
    }
    
    func step2(json:String)  {
        var strArray = json.components(separatedBy: ",")
        let id = strArray[0]
        let name = strArray[1]
        let ans = strArray[2]
        let point = strArray[3]
        let room = strArray[4]
        
        //print("id : \(id) \n name : \(name) \n ans : \(ans) \n point : \(point)")
        step3(id: id , name :name , ans : ans , point:point)
    
    }
    
    func step3(id:String , name:String , ans:String , point:String)  {
        var strArrayid = id.components(separatedBy: ":\"")
        var strArrayName = name.components(separatedBy: ":\"")
        var strArrayAns = ans.components(separatedBy: ":\"")
        var strArrayPoint = ans.components(separatedBy: ":\"")
        let id = strArrayid[1]
        let name = strArrayName[1]
        let ans = strArrayAns[1]
        let point = strArrayPoint[1]
         //print("id : \(id) \n name : \(name) \n ans : \(ans) \n point : \(point)")
        step4(id: id , name :name , ans : ans , point:point)
    }
    
    func step4(id:String , name:String , ans:String , point:String)  {
        var strArrayid = id.components(separatedBy: "\"")
        var strArrayName = name.components(separatedBy: "\"")
        var strArrayAns = ans.components(separatedBy: "\"")
        var strArrayPoint = ans.components(separatedBy: "\"")
        let id = strArrayid[0]
        let name = strArrayName[0]
        let ans = strArrayAns[0]
        let point = strArrayPoint[0]
        setName(name: name)
        
       //print("id : \(id) \n name : \(name) \n ans : \(ans) \n point : \(point)")
        addDictionary(id: id , name :name , ans : ans , point:point)
    }
    func addDictionary(id:String , name:String , ans:String , point:String)  {
        dict[id] = [name,ans,point]
        
       // print("-------- \(dict)\n")
    }
    
    
    
    
    
    
}
