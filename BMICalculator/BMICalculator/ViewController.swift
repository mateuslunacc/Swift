//
//  ViewController.swift
//  BMICalculator
//
//  Created by Student on 3/15/17.
//  Copyright © 2017 Mateus Luna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateButton(_ sender: Any) {
        let weight = Double(self.weightTextField.text!)!
        let height = Double(self.heightTextField.text!)!
        
        let bmi = weight/(height*height)
        
        
        self.resultLabel.text = String(format: "%.2f", bmi)
        
        self.weightTextField.text = ""
        self.heightTextField.text = ""
    }
    
}

