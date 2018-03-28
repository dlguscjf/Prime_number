//
//  ViewController.swift
//  Prime_number
//
//  Created by D7703_06 on 2018. 3. 28..
//  Copyright © 2018년 IceArrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var textend: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        text.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func check(_ sender: UIButton) {
        let num = Int(text.text!)
        var tandf = true
        if num != 1 && num != 2 {
        for i in 2 ..< num!{
            if num! % i == 0{
                tandf = false
            }
        }
            
    }
        if tandf == true{
            textend.text = "Prime number"
        }
        else{
            textend.text = "Not Prime number"
        }
    }
    @IBAction func Reset(_ sender: UIButton) {
        text.text = ""
        textend.text = "결 과"
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        text.resignFirstResponder();
        return true
    }

}

