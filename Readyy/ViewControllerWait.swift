//
//  ViewControllerWait.swift
//  Readyy
//
//  Created by Milk on 8/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import UIKit

class ViewControllerWait: UIViewController {
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        getChoies()
        getQuestion()

        // Do any additional setup after loading the view.
    }

    @IBAction func Playing(_ sender: Any) {
        //getChoies()
        //getQuestion()
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
                    //print("data: \(dataString)")
                }
            }
        }
        task.resume()
    
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
                    //print("data: \(dataString)")
                }
            }
        }
        task.resume()
        
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
