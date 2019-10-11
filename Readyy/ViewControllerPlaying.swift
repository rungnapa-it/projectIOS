//
//  ViewControllerPlaying.swift
//  Readyy
//
//  Created by Milk on 9/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import UIKit

class ViewControllerPlaying: UIViewController {
    
    var buttonNext = false
    
    @IBOutlet weak var questionField: UITextField!
    @IBOutlet weak var choices1Button: UIButton!
    
    @IBOutlet weak var choices4Button: UIButton!
    @IBOutlet weak var choices3Button: UIButton!
    @IBOutlet weak var choices2Button: UIButton!
    override func viewDidLoad() {
        
        ready()
        question.getDictionary()
        choices.getDictionary()
    }
    

    @IBAction func setButton(_ sender: Any) {
        buttonNext = true
    }
    
    func ready () {
        var dictionary = choices.getDictionary()
        for (i) in 0...2 {
            
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
                var choices1 = array[0]
                var choices2 = array[1]
                var choices3 = array[2]
                var choices4 = array[3]
                choices1Button.setTitle("\(choices1)", for: .normal)
                choices2Button.setTitle("\(choices2)", for: .normal)
                choices3Button.setTitle("\(choices3)", for: .normal)
                choices4Button.setTitle("\(choices4)", for: .normal)
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

