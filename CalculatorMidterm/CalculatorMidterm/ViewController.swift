//
//  ViewController.swift
//  CalculatorMidterm
//
//  Created by Krista Strucke on 4/16/15.
//  Copyright (c) 2015 Doge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var outputLabel: UILabel!
    
    var result = Float()
    var currentNumber = Float()
    var currentOp = String()
    
    
    @IBAction func allClear(sender: AnyObject) {
        
        result = 0
        currentNumber = 0
        currentOp = "="
        outputLabel.text = ("\(result)")
    }
    
    
    @IBAction func positiveOrNegative(sender: AnyObject) {
    }
    
    
    @IBAction func makePercentage(sender: AnyObject) {
    }
    
    
    @IBAction func operationButton(sender: AnyObject) {
        
        let opButtons = sender as! UIButton
        currentOp = opButtons.titleLabel!.text!
        
        switch currentOp {
            
            case "=":
                result = currentNumber
            case "➕":
                result = result + currentNumber
            case "-":
                result = result - currentNumber
            case "✖️":
                result = result * currentNumber
            case "➗":
                result = result / currentNumber
            default:
                println("Error")
        
        }
        
        currentNumber = 0
        outputLabel.text = ("\(result)")
        
        if (outputLabel!.text == "=") {
            
            result = 0
            
        
        }
        
    }
    
    
    
    @IBAction func numberInput(sender: UIButton) {
        
        
        if let text = sender.currentTitle {
            currentNumber += (text as NSString).floatValue
        } else {
            print("outputLabel.textfailed!!!!")
        }
        
//        currentNumber += Float(outputLabel.text?.toInt() ?? 0)
        outputLabel.text = ("\(currentNumber)")
        
        
    }
    

    
    @IBAction func insertDecimal(sender: AnyObject) {
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentOp = "="
        outputLabel.text = ("\(result)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}