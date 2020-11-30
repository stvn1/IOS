//
//  ViewController.swift
//  LabTest1
//
//  Created by Esteban Guzman on 2020-02-13.
//  Copyright © 2020 Esteban Guzman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var inputCurrencyAmt: UITextField!
    
    @IBOutlet weak var convertionFactor: UITextField!
    
    
    @IBOutlet weak var outputCurrencyAmt: UITextField!
    
    
    
    @IBAction func buttonDoConvertion(_ sender: Any) {
        inputCurrencyAmt.text = ""
        convertionFactor.text = ""
        outputCurrencyAmt.text = ""
        
        let sal:Double = Double(inputCurrencyAmt.text!)!
        let taxRate:Double = Double(convertionFactor.text!)!
        let gross = sal * taxRate
        
        let res:String = String(gross)
        
        outputCurrencyAmt.text = res
        
    }
    
    



}

