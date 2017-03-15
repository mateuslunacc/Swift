//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Student on 3/15/17.
//  Copyright © 2017 Mateus Luna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!

    @IBOutlet weak var middleNameTextField: UITextField!

    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBAction func sayMyNameButton() {
        // 1. Get the text from the user
        
        let firstName = self.firstNameTextField.text!
        let middleName = self.middleNameTextField.text!
        let lastName = self.lastNameTextField.text!
        
        // 2. Rename the label with the name
        
        self.fullNameLabel.text = "\(firstName) \(middleName) \(lastName)"
        
        // 3. Delete the text the user typed
        
        self.firstNameTextField.text = ""
        self.middleNameTextField.text = ""
        self.lastNameTextField.text = ""
        
        
    }
    
}

