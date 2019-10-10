//
//  ViewControllerPlaying.swift
//  Readyy
//
//  Created by Milk on 9/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import UIKit

class ViewControllerPlaying: UIViewController {
    
    let vp = ViewControllerAddQ(nibName: "ViewControllerAddQ", bundle: nil)
    
    
    
  
    @IBOutlet weak var questionField: UITextField!
    @IBOutlet weak var choices1Button: UIButton!
    
    @IBOutlet weak var choices4Button: UIButton!
    @IBOutlet weak var choices3Button: UIButton!
    @IBOutlet weak var choices2Button: UIButton!
    override func viewDidLoad() {
        getChoies()
        getQuestion()
        ready()
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
                    
                    self.vp.choices.choicesJSON(text: dataString)
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
                    
                    self.vp.question.questionJSON(json: dataString)
                    //self.setQuestion(q: self.question);
                    //print("data: \(dataString)")
                    print("Fun : \(self.vp.question.getName())")
                }
            }
        }
        task.resume()
        
        
    }
    func ready () {
        
       
        self.questionField.text = vp.question.getName()
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
