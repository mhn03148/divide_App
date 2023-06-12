//
//  ViewController.swift
//  divide_App
//
//  Created by 주진형 on 2023/06/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstNumText: UITextField!
    
    @IBOutlet var secondNumText: UITextField!
    
    @IBOutlet var resultText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func divideButton(_ sender: Any) {
        let firstNumber: Double = Double(firstNumText.text ?? "") ?? 0.0
        let secondNumber: Double = Double(secondNumText.text ?? "") ?? 0.0
        guard secondNumber != 0 else {
            resultText.text = "Can't divide it"
            return
        }
        let resultNumber: Double = firstNumber / secondNumber
        //resultNumber = firstNumber / secondNumber
        resultText.text = "\(resultNumber)"
    }
    
}

