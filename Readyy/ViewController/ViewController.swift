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
        let url = URL(string: "http://localhost:8081/gamer")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                //print("error: \(error)")
            } else {
                if let response = response as? HTTPURLResponse {
                    //print("statusCode: \(response.statusCode)")
                }
                if let data = data, let dataString = String(data: data, encoding: .utf8) {
                    self.gamer.printtest(text: dataString)
                   // print("data: \(dataString)")
                }
            }
        }
        task.resume()
        
        
    }
    
    @IBAction func post(_ sender: Any) {
        let name:String = fieldname.text!
        gamer.setId()
        gamer.setName(name: name)
        let url = URL(string: "http://localhost:8081/gamer")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                //print("error: \(error)")
            } else {
                if let response = response as? HTTPURLResponse {
                    //print("statusCode: \(response.statusCode)")
                }
                if let data = data, let GamerString = String(cString: self.gamer.getJSON(), encoding: .utf8) {
                    //print("Gamer: \(GamerString)")
                }
            }
        }
        task.resume()
    }
    
}

