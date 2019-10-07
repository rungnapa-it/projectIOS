//
//  ViewController.swift
//  Readyy
//
//  Created by Ratsuda Suwan on 12/9/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let gamer = Gamer(name:"")
    @IBOutlet weak var fieldname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Enter(_ sender: Any) {
        let name:String = fieldname.text!
        gamer.setId()
        gamer.setName(name: name)
        
    }
    
}

