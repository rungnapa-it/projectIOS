//
//  ViewControllerAddQ.swift
//  Readyy
//
//  Created by Milk on 5/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import UIKit

class ViewControllerAddQ: UIViewController {
    let choices = Choices()
    let question = Question()
    
    
    @IBOutlet weak var labelQuestion: UITextField!
    @IBOutlet weak var labelChoices1: UITextField!
    @IBOutlet weak var labelChoices2: UITextField!
    @IBOutlet weak var labelChoices3: UITextField!
    @IBOutlet weak var laberChoices4: UITextField!
    var buttonA:Bool! = false
    var buttonB:Bool! = false
    var buttonC:Bool! = false
    var buttonD:Bool! = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func ansA(_ sender: Any) {
        if (buttonB == false && buttonC == false && buttonD == false){
            buttonA = true
            question.setAns(ans: labelChoices1.text!)
        }
        
    }
    @IBAction func ansB(_ sender: Any) {
    }
    @IBAction func ansC(_ sender: Any) {
    }
    @IBAction func ansD(_ sender: Any) {
    }
    
    
    @IBAction func buttonAdd(_ sender: Any){
        let q:String = labelQuestion.text!
        let c1:String = labelChoices1.text!
        let c2:String = labelChoices2.text!
        let c3:String = labelChoices3.text!
        let c4:String = laberChoices4.text!
        question.setName(name: q)
        choices.setChoices1(choices1: c1)
        choices.setChoices2(choices2: c2)
        choices.setChoices3(choices3: c3)
        choices.setChoices4(choices4: c4)
        
        
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
