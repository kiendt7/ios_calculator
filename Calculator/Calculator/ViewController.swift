//
//  ViewController.swift
//  Calculator
//
//  Created by Admin on 4/5/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var txtResult: UITextField!
    @IBOutlet weak var input2: UITextField!
    
    var type: Operators = .doNothing
    
    @IBAction func operatorAction(_ sender: UIButton) {
        if(sender.tag != 5){
            switch sender.tag {
            case 1:
                type = .addition
            case 2:
                type = .subtraction
            case 3:
                type = .multiplication
            case 4:
                type = .devision
            default:
                type = .doNothing
            }
        }
        
    }
    
    fileprivate var cal: CalculatorModel = CalculatorModel(input1: 0, input2: 0, type: .doNothing){
        didSet{
            txtResult.text = String(cal.output)
        }
    }
    
    
    @IBAction func resultAction(_ sender: Any) {
        if(input1.text != nil && input2.text != nil){
            if(input2.text == "0"){
                txtResult.text = "0"
            }else{
                cal = CalculatorModel(input1: Int(input1.text!)!, input2: Int(input2.text!)!, type: type)
                
            }
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

