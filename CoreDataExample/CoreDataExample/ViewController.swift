//
//  ViewController.swift
//  CoreDataExample
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleText: UITextField!
    
    @IBOutlet weak var directorText: UITextField!
    
    @IBOutlet weak var yearText: UITextField!
    
    var year: Int16 {
        if let text = yearText.text {
            if let intValue = Int16(text) {
                return intValue
            }
        }
        
        return 0
    }
    
    @IBAction func addMovie(_ sender: UIButton) {
        let title = titleText.text
        let director = directorText.text
        //let year = yearText.text
        
        let newMovie = Movie()
        newMovie.title = title
        newMovie.director = director
        newMovie.year = self.year
        
        if MovieDAO.add(newMovie) {
            print("New movie \(newMovie.title) added successfully.")
        } else {
            print("The movie \(newMovie.title) wasnt added.")
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

