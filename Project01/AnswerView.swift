//
//  AnswerView.swift
//  Project01
//
//  Created by 류효정 on 14/04/2019.
//  Copyright © 2019 류효정. All rights reserved.
//
import UIKit

class AnswerView: UIViewController, UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { //delegate method
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBOutlet var fineDustTextField: UITextField!
    @IBOutlet var labelResult: UILabel!
    
    @IBAction func buttontodayFineDust(_ sender: UIButton) {
        let num = Double(fineDustTextField.text!)!
        
        if (0.0 <= num && num <= 40.0) {
            labelResult.text = "좋음"
            
        }
        else if (40.0 < num && num <= 80.0) {
            labelResult.text = "보통"
        }
        else if (80.0 < num && num <= 150.0) {
            labelResult.text = "나쁨"
        }
        else if (150.0 < num) {
            labelResult.text = "매우 나쁨"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

