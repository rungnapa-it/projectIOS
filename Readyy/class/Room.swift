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
    var roomOrder:Int
    
    init() {
        self.room = ""
        self.roomOrder = 111
    }
    
    func roomId()  {
        room = "R\(roomOrder)"
    }
    
    func setRoomOrder()  {
        roomOrder+=1
    }
    
    func setDictionaryRoom(status:String , win1:String , win2:String , win3:String)  {
       
    }
    
    
}
