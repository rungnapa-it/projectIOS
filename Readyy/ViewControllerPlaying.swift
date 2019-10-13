//
//  ViewControllerPlaying.swift
//  Readyy
//
//  Created by Milk on 9/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import UIKit

class ViewControllerPlaying: UIViewController {
    var dictionary = choices.getDictionary()
    var buttonNext = true
    var buttonchoices1 = false
    var buttonchoices2 = false
    var buttonchoices3 = false
    var buttonchoices4 = false
   
    
    @IBOutlet weak var questionField: UITextField!
    @IBOutlet weak var choices1Button: UIButton!
    
    @IBOutlet weak var choices4Button: UIButton!
    @IBOutlet weak var choices3Button: UIButton!
    @IBOutlet weak var choices2Button: UIButton!
    override func viewDidLoad() {
        dictionary = choices.getDictionary()
        buttonchoices1 = true
        ready()
        question.getDictionary()
        choices.getDictionary()
        
    }
    @IBAction func setchoices1(_ sender: Any) {
        buttonchoices1 = true
        ready()
    }
  
   
    @IBAction func setChoices2(_ sender: Any) {
        buttonchoices2 = true
        ready()
    }
    
    @IBAction func setChoices3(_ sender: Any) {
        buttonchoices3 = true
        ready()
    }
    @IBAction func setChoices4(_ sender: Any) {
        buttonchoices4 = true
        ready()
    }
    
    

    @IBAction func setButton(_ sender: Any) {
        buttonNext = true
        ready()
        
    }
    
    func ready () {
        while (dictionary.count != 0 && buttonchoices1 == true || buttonchoices2 == true || buttonchoices3 == true || buttonchoices4 == true ){
           buttonchoices1 = false
            buttonchoices2 = false
            buttonchoices3 = false
            buttonchoices4 = false
            var array = [String]()
            var id = accessToDictionary(dict: dictionary)
            self.questionField.text = question.getNameIndex(id: id)
            
            for (key , value) in dictionary {
                if (key == id){
                    for (v) in value{
                        array.append(v)
                    }
                }
            }
            
            //dictionary[id] = nil
            print("Aictionary : \(dictionary)")
            print("Array : \(array)")
            if (array.count == 4){
                var choices1 = array[0]
                var choices2 = array[1]
                var choices3 = array[2]
                var choices4 = array[3]
                choices1Button.setTitle("\(choices1)", for: .normal)
                choices2Button.setTitle("\(choices2)", for: .normal)
                choices3Button.setTitle("\(choices3)", for: .normal)
                choices4Button.setTitle("\(choices4)", for: .normal)
            }
            dictionary[id] = nil
        }
        
            
        
    }
        
    
        
        
    
    
    func accessToDictionary(dict:[String:Array<String>]) -> String {
        var keyQuestion = ""
        for (key,value) in dict{
            keyQuestion = key
            break
        }
        return keyQuestion
    }
}

