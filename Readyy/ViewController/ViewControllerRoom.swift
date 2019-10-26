//
//  ViewControllerRoom.swift
//  Readyy
//
//  Created by Milk on 26/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import UIKit

class ViewControllerRoom: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func randomRoom(_ sender: Any) {
       var id = room.randomRoom()
        gamer.setRoomDictionary(name: gamer.getName(), roomId: id)
       
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
