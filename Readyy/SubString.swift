//
//  SubString.swift
//  Readyy
//
//  Created by Milk on 8/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import Foundation
class SubString {
    
    
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
        let id = strArrayid[0]
        let choices1 = strArrayChoices1[0]
        let choices2 = strArrayChoices2[0]
        let choices3 = strArrayChoices3[0]
        let choices4 = strArrayChoices4[0]
        
//        choices.setId(questionId: id)
//        choices.setChoices1(choices1: choices1)
//        choices.setChoices2(choices2: choices2)
//        choices.setChoices3(choices3: choices3)
//        choices.setChoices4(choices4: choices4)
       
        //print("\(id)\n\(choices1)\n\(choices2)\n\(choices3)\n\(choices4) ")
    }
    
    
}
