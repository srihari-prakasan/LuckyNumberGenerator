//
//  ViewController.swift
//  Greetings
//
//  Created by Trenser-01 on 19/10/22.
//

import UIKit

class ViewController: UIViewController,UiManagerDelegate{
    
    @IBOutlet weak var luckyNumberField: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    let luckyNumberGenerator=LuckyNumberGenerator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        luckyNumberGenerator.delegate = self
    }

    
    func updateUI(luckyNumber: Int){
        luckyNumberField.text=String(luckyNumber)
        print(luckyNumber)
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        if let nameVal=nameTextField.text{
           luckyNumberGenerator.generate(name: nameVal)
            
        }
    }
}

