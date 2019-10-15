//
//  ViewControllerWait.swift
//  Readyy
//
//  Created by Milk on 8/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import UIKit

class ViewControllerWait: UIViewController {
    
    @IBOutlet weak var pinRoom: UITextField!
    @IBOutlet weak var keyRoom: UITextField!
    @IBOutlet weak var numOfPlayer: UITextField!
    @IBOutlet weak var showNamePlayer: UITextView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        getQuestion()
        getGamer()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Playing(_ sender: Any) {
        //getChoies()
        //getQuestion()
    }
    
    
    func getQuestion()  {
        let url = URL(string: "http://localhost:8081/question")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("error: \(error)")
            } else {
                if let response = response as? HTTPURLResponse {
                    //print("statusCode: \(response.statusCode)")
                }
                if let data = data, let dataString = String(data: data, encoding: .utf8) {
                    
                    question.questionJSON(json: dataString)
                    //self.setQuestion(q: self.question);
                    //print("dataQuestion: \(dataString)")
                }
            }
        }
        task.resume()
        getChoies()
        
    }
    func getChoies() {
        
        let url = URL(string: "http://localhost:8081/choices")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("error: \(error)")
            } else {
                if let response = response as? HTTPURLResponse {
                    //print("statusCode: \(response.statusCode)")
                }
                if let data = data, let dataString = String(data: data, encoding: .utf8) {
                    
                    choices.choicesJSON(text: dataString)
                    //self.setChoices(ch:self.choices)
                    //print("dataChoices: \(dataString)")
                }
            }
        }
        task.resume()
        
    }
    
    func getGamer() {
        
        let url = URL(string: "http://localhost:8081/gamer")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("error: \(error)")
            } else {
                if (response as? HTTPURLResponse) != nil {
                    //print("statusCode: \(response.statusCode)")
                }
                if let data = data, let dataString = String(data: data, encoding: .utf8) {
                    
                    gamer.gamerJSON(json: dataString)
                    
                    //self.setChoices(ch:self.choices)
                    //print("dataChoices: \(dataString)")
                }
            }
        }
        task.resume()
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
    
}

