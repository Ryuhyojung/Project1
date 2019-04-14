//
//  ViewController.swift
//  Project01
//
//  Created by 류효정 on 14/04/2019.
//  Copyright © 2019 류효정. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
  
    @IBOutlet var buttonGood: UIButton!
    @IBOutlet var buttonSoso: UIButton!
    @IBOutlet var buttonBad: UIButton!
    @IBOutlet var buttonReallyBad: UIButton!
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var hiddenView: UIView!
    
    let fineDustArray: Array<String> = ["외출 걱정 NO!", "노약자는 마스크 필수!", "장시간 외출 자제!", "실외활동 NO!"]
    var started: Bool!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fineDustArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fineDustArray[row]
    }
    
    @IBAction func buttonStart(_ sender: UIButton) {
        started = true
        hiddenView.isHidden = true
        
    }
    
    @IBAction func buttonFineDust(_ sender: UIButton) {
        let index = pickerView.selectedRow(inComponent: 0)
        
        if started == true {
            if(index == 0 && sender == buttonGood)
            {
                hiddenView.isHidden = false
                started = false
            }
            if(index == 1 && sender == buttonSoso)
            {
                hiddenView.isHidden = false
                started = false
            }
            if(index == 2 && sender == buttonBad)
            {
                hiddenView.isHidden = false
                started = false
            }
            if(index == 3 && sender == buttonReallyBad)
            {
                hiddenView.isHidden = false
                started = false
            }
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        started = false
        hiddenView.isHidden = true
        
    }
}



