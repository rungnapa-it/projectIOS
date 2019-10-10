//
//  Choices.swift
//  Readyy
//
//  Created by Milk on 5/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import Foundation
class Choices {
    private var dict = Dictionary<String,Array<String>>()
    private var id:String = ""
    private var choices1: String = ""
    private var choices2: String = ""
    private var choices3: String = ""
    private var choices4: String = ""
    private var question = Question()
    
    func setQuestion(q:Question){
        self.question = q
    }
    
  init() {
        self.id = "";
        self.choices1 = ""
        self.choices2 = ""
        self.choices3 = ""
        self.choices4 = ""
        
    }
    
    func setId(questionId:String)  {
        self.id = questionId
        
    }
    
   
    func setChoices1(choices1:String)  {
    
        self.choices1 = choices1
        //print("Choices1: \(choices1)")
    }
    
    func setChoices2(choices2:String)  {
        self.choices2 = choices2
        //print("Choices2: \(choices2)")
    }
    
    func setChoices3(choices3:String)  {
        self.choices3 = choices3
        //print("Choices3: \(choices3)")
    }
    
    func setChoices4(choices4:String)  {
        self.choices4 = choices4
        //print("Choices4: \(choices4)")
        
    }
    
    func getId() -> String {
        return id
    }
    
    func getChoices1() -> String {
        return choices1
    }
    
    func getChoices2() -> String {
        return choices2
    }
    
    func getChoices3() -> String {
        return choices3
    }
    
    func getChoices4() -> String {
        return choices4
    }
    
    
    func getJSON() -> String {
        return "[{\"id\":\"\(id)\",\"choices1\":\"\(choices1)\",\"choices2\":\"\(choices2)\",\"choices3\":\"\(choices3)\",\"choices4\":\"\(choices4)\"}]";
    }
    
    func choicesJSON(text:String){
        //print("Choices : \(text)")
        step1(json: text)
        
        
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
        let choices1 = strArray[1]
        let choices2 = strArray[2]
        let choices3 = strArray[3]
        let choices4 = strArray[4]
        
        step3(id: id, choices1: choices1, choices2: choices2, choices3: choices3, choices4: choices4)
        //    print("\(id)\n\(choices1)\n\(choices2)\n\(choices3)\n\(choices4) ")
    }
    
    func step3(id:String , choices1:String,choices2:String ,choices3:String  ,choices4:String)  {
        var strArrayid = id.components(separatedBy: ":\"")
        var strArrayChoices1 = choices1.components(separatedBy: ":\"")
        var strArrayChoices2 = choices2.components(separatedBy: ":\"")
        var strArrayChoices3 = choices3.components(separatedBy: ":\"")
        var strArrayChoices4 = choices4.components(separatedBy: ":\"")
        let id = strArrayid[1]
        let choices1 = strArrayChoices1[1]
        let choices2 = strArrayChoices2[1]
        let choices3 = strArrayChoices3[1]
        let choices4 = strArrayChoices4[1]
        //print("\(id)\n\(choices1)\n\(choices2)\n\(choices3)\n\(choices4) ")
        step4(id: id, choices1: choices1, choices2: choices2, choices3: choices3, choices4: choices4)
    }
    
    func step4(id:String , choices1:String,choices2:String ,choices3:String  ,choices4:String) {
        var strArrayid = id.components(separatedBy: "\"")
        var strArrayChoices1 = choices1.components(separatedBy: "\"")
        var strArrayChoices2 = choices2.components(separatedBy: "\"")
        var strArrayChoices3 = choices3.components(separatedBy: "\"")
        var strArrayChoices4 = choices4.components(separatedBy: "\"")
        let questionId = strArrayid[0]
        let choices1 = strArrayChoices1[0]
        let choices2 = strArrayChoices2[0]
        let choices3 = strArrayChoices3[0]
        let choices4 = strArrayChoices4[0]
        addDictionary(id: questionId, choices1: choices1, choices2: choices2, choices3: choices3, choices4: choices4)
    }
    
    func addDictionary(id:String,choices1:String,choices2:String,choices3:String,choices4:String)  {
        dict[question.getName()] = [choices1,choices2,choices3,choices4]
        //print("--------\(dict)\n")
        
    }
    
       
    
    
}
