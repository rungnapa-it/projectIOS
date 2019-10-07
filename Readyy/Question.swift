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
        print("Question : \(name)")
    }
    
    func setAns(ans:String)  {
        self.ans = ans
        print("Ans: \(ans)")
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
    func questionJSON() -> String {
        return "[{\"id\":\"\(id)\",\"name\":\"\(name)\",\"ans\":\"\(ans)\",\"point\":\"\(point)\"}]";
    }
    
    
    
    
    
}
