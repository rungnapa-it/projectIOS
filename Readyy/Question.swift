//
//  Question.swift
//  Readyy
//
//  Created by Milk on 5/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import Foundation
class Question {
    var id:String
    var name:String
    var ans:String
    var point:Int
    var questionOrder:Int
    
    init() {
        self.id = ""
        self.name = ""
        self.ans = ""
        self.point = 10
        self.questionOrder = 100
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
        //print("Question : \(name)")
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
        return "[{\"id\":\"\(id)\",\"name\":\"\(name)\",\"ans\":\"\(ans)\",\"point\":\"\(point)\"}]";
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
        
        print("id : \(id) \n name : \(name) \n ans : \(ans) \n point : \(point)")
    
    }
    
    
    
    
}
