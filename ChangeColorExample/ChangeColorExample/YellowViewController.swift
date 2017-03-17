//
//  YellowViewController.swift
//  ChangeColorExample
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Mateus Luna. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

   
    @IBOutlet weak var colorTextField: UITextField!
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "showNextView"{
            
            if let newView = segue.destination as? GreenViewController {
                //newView.textLabel.text = colorTextField.text    //Wrong way
                
                newView.color = colorTextField.text
            }
        }
    }
    

}
