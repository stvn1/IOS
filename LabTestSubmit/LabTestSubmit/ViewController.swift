//
//  ViewController.swift
//  LabTestSubmit
//
//  Created by Esteban Guzman on 2020-02-13.
//  Copyright © 2020 Esteban Guzman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var inputCurrencyAmt: UITextField!
    
    
    @IBOutlet weak var conversionFactor: UITextField!
    
    
    @IBOutlet weak var output: UITextField!
    
    
    @IBAction func doConversionButton(_ sender: Any) {
        
        let sal:Double = Double(inputCurrencyAmt.text!)!
        let taxRate:Double = Double(conversionFactor.text!)!
        let gross = sal * taxRate
        
        let res:String = String(gross)
        
        output.text = res
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

