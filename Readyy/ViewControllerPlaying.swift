//
//  ViewControllerPlaying.swift
//  Readyy
//
//  Created by Milk on 9/10/2562 BE.
//  Copyright © 2562 Ratsuda Suwan. All rights reserved.
//

import UIKit

class ViewControllerPlaying: UIViewController {
    
  
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
    


    func ready () {
        let dictionary = choices.getDictionary()
        for (key,value) in dictionary{
            
            let qu = question.getNameIndex(id: key)
            print(qu)
            for (name) in value {
                print(name)
            }
            
            
        }
    }



}

