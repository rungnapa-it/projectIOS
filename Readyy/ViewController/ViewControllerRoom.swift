//
//  ViewControllerRoom.swift
//  Readyy
//
//  Created by Milk on 26/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import UIKit

class ViewControllerRoom: UIViewController {
    @IBOutlet weak var labelException: UILabel!
    
    @IBOutlet weak var pinLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextToRoom(_ sender: Any) {
        var PIN:Bool
        if (pinLabel.text == ""){
            labelException.text = "กรุณากรอก PIN"
        }else{
        
            PIN = room.isPIN(PIN: pinLabel.text!)
        
            if (PIN == true ){
            performSegue(withIdentifier: "page3", sender: self)
            gamer.setRoomDictionary(name: gamer.getName(), roomId: pinLabel.text!)
            
            }else{
                labelException.text = "ไม่มี PIN นี้"
                print("nonPIN")
            }
        }
        
    }
    @IBAction func randomRoom(_ sender: Any) {
       var id = room.randomRoom()
        gamer.setRoomDictionary(name: gamer.getName(), roomId: id)
        performSegue(withIdentifier: "page3", sender: self)
       
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
