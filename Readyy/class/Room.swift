//
//  Room.swift
//  Readyy
//
//  Created by Milk on 15/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import Foundation
class Room{
    private var dictRoom = Dictionary<String,Array<String>>()
    var room:String
    
    
    init() {
        self.room = ""
      
    }
    
    func roomRandom() -> String {
        var i = 0 , key = "" , keyOld = ""
        while i<5 {
            
            let  number = Int.random(in: 0..<10)
            key = "\(keyOld)\(number)"
            keyOld = "\(key)"
            
        }
        return key
    }
    
   
    
    
    
    func addDictionary(roomId:String,status:String , win1:String , win2:String , win3:String)  {
       dictRoom[roomId] = [status,win1,win2,win3]
    }
    
    
}
