//
//  ViewController.swift
//  NewApp
//
//  Created by Stefano carella on 14/06/22.
//

import UIKit

class ViewController: UIViewController {
    var stringa1: Int = 0
    var operators = ""
    var stringa2: Int = 0
    var resultInt: Int = 0
    
    @IBOutlet weak var result: UITextField!
    
    @IBOutlet weak var Screen: UITextField!
    
    @IBAction func One(_ sender: UIButton) {
        Screen.text = Screen.text! + "1"
    }
    @IBAction func Two(_ sender: UIButton) {
        Screen.text = Screen.text! + "2"
    }
    @IBAction func Three(_ sender: UIButton) {
        Screen.text = Screen.text! + "3"
    }
    @IBAction func Four(_ sender: UIButton) {
        Screen.text = Screen.text! + "4"
    }
    @IBAction func Five(_ sender: UIButton) {
        Screen.text = Screen.text! + "5"
    }
    @IBAction func Six(_ sender: UIButton) {
        Screen.text = Screen.text! + "6"
    }
    @IBAction func Seven(_ sender: UIButton) {
        Screen.text = Screen.text! + "7"
    }
    @IBAction func Eight(_ sender: UIButton) {
        Screen.text = Screen.text! + "8"
    }
    @IBAction func Nine(_ sender: UIButton) {
        Screen.text = Screen.text! + "9"
    }
    @IBAction func Zero(_ sender: UIButton) {
        Screen.text = Screen.text! + "0"
    }
    @IBAction func Sum(_ sender: UIButton) {
        stringa1 = Int(Screen.text!)!
        operators = "+"
        Screen.text = ""
    }
    @IBAction func Substract(_ sender: UIButton) {
        stringa1 = Int(Screen.text!)!
        operators = "-"
        Screen.text = ""
    }
    @IBAction func Multiply(_ sender: UIButton) {
        stringa1 = Int(Screen.text!)!
        operators = "*"
        Screen.text = ""
    }
    @IBAction func Division(_ sender: UIButton) {
        stringa1 = Int(Screen.text!)!
        operators = "+"
        Screen.text = ""
    }
   
    @IBAction func DeleteAll(_ sender: UIButton) {
        stringa1 = 0
        stringa2 = 0
        operators = ""
        resultInt = 0
        Screen.text = ""
        result.text = ""
    }
    
    @IBAction func Equal(_ sender: UIButton) {
        stringa2 = Int(Screen.text!)!
        
        switch operators {
        case "+":
            resultInt = stringa1 + stringa2
            result.text = result.text! + String(resultInt)
            operators = ""
        case "-":
            resultInt = stringa1 - stringa2
            result.text = result.text! + String(resultInt)

            operators = ""
        case "*":
            resultInt = stringa1 * stringa2
            result.text = result.text! + String(resultInt)
            operators = ""
        default:
            resultInt = stringa1 / stringa2
            result.text = result.text! + String(resultInt)
            operators = ""
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

