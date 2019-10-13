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
    
    
    
    init() {
        self.id = ""
        self.name = ""
        self.ans = ""
        self.point = 10
        self.questionOrder = 100
        self.room = ""
        
        
    }
    
    func setRoom(room:String)  {
        self.room = room
        
    }
    func getRoom() -> String {
        return room
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
        return "[{\"id\":\"\(id)\",\"name\":\"\(name)\",\"ans\":\"\(ans)\",\"point\":\"\(point)\",\"room\":\"\(room)\"}]";
    }
    
    func questionJSON(json:String) {
       
        subStringQuestion.step1(json: json)
    }
    
    
    func addDictionary(id:String , name:String , ans:String , point:String,room:String)  {
        dict[id] = [name,ans,"10",room]
        
        }
        
       // print("-------- \(dict)\n")
    
    func getDictionary() {
       // print("\(dict)")
    }

    func getNameIndex(id:String) -> String{
        
        var nameQuestion = ""
        for (key,value) in dict {
            if (key == id){
                for (name) in value{
                    nameQuestion = name
                    break
                }
                
            }
        }
       
        return nameQuestion
    }
    
    func getScore(qu:String , ans:String) -> Int {
        var k = ""
        for (key , value ) in dict{
            for (v) in value{
                if (v == qu){
                    k = key
                    break
                }
            }
        }
        let value:Array<String> = dict[k]!
        if (ans == value[1]){
            return 1
        }
        return 0
    }
    
    
    
    
    
}
