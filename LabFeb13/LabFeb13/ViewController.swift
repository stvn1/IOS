//
//  ViewController.swift
//  LabFeb13
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
    
    @IBOutlet weak var IBOLabel1: UILabel!

    
    @IBOutlet weak var IBOTextFieldA: UITextField!
    
    
    
    @IBAction func IBOButton(_ sender: Any) {
        IBOLabel1.text! = IBOTextFieldA.text!
        
        UserDefaults.standard.set(IBOTextFieldA.text, forKey: "myName")
        IBOTextFieldA.text = ""
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated:Bool)
    {
        if let x = UserDefaults.standard.object(forKey: "myName") as? String{
            IBOLabel1.text = x
        }
    }
    
}

