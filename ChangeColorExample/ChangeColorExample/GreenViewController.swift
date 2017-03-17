//
//  GreenViewController.swift
//  ChangeColorExample
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Mateus Luna. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    
    @IBOutlet weak var textLabel: UILabel!
    
    var color : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = color
        
        if color != ""{
            switch color!.lowercased() {
                case "red":
                    self.view.backgroundColor = UIColor.red
                case "blue":
                    self.view.backgroundColor = UIColor.blue
                default:
                    self.view.backgroundColor = UIColor.gray
            }
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
