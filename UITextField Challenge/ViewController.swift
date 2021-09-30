//
//  ViewController.swift
//  UITextField Challenge
//
//  Created by Hazel Dodds on 9/29/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloButton: UIButton!
   
    @IBOutlet weak var languageSelectorOutlet: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
   }

    
    @IBAction func helloButtonAction(_ sender: UIButton) {
//  mvp & stretch 3
        if languageSelectorOutlet.selectedSegmentIndex == 0 {
        greetingLabel.text = "Hello \(nameTextField.text!)"
                    }
        if languageSelectorOutlet.selectedSegmentIndex == 1 {
            greetingLabel.text = "안녕하세요 \(nameTextField.text!)"
        }
            if languageSelectorOutlet.selectedSegmentIndex == 2 {
                greetingLabel.text = "こんにちは \(nameTextField.text!)"
            }

//  stretch 1
        nameTextField.text = nil
//  stretch 2
        nameTextField.resignFirstResponder()
        
        }
    //  stretch 4
        func textFieldShouldReturn(_ nameTextField: UITextField) -> Bool {
            if languageSelectorOutlet.selectedSegmentIndex == 0 { greetingLabel.text = "Goodbye, \(nameTextField.text!)"
            }
            if languageSelectorOutlet.selectedSegmentIndex == 1 {
    greetingLabel.text = "안녕히 가세요 \(nameTextField.text!)"
}
            if languageSelectorOutlet.selectedSegmentIndex == 2 {
        greetingLabel.text = "さようなら \(nameTextField.text!)"
    }
            nameTextField.text = nil
            nameTextField.resignFirstResponder()
            return true
    }
}
