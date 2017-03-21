//
//  ArtistDetailViewController.swift
//  MusicApp
//
//  Created by Student on 3/20/17.
//  Copyright © 2017 Mateus Luna. All rights reserved.
//

import UIKit

class ArtistDetailViewController: UIViewController {

    var song: Song?
    
    @IBOutlet weak var artistImage: UIImageView!
    
    @IBOutlet weak var artistDetails: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let song = self.song {
            artistImage.image = UIImage(named: song.picture)
            artistDetails.text = song.longDetails
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
