//
//  SongViewController.swift
//  MusicApp
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Mateus Luna. All rights reserved.
//

import UIKit

class SongViewController: UIViewController {
    
    @IBOutlet weak var albumImage: UIImageView!
    
    @IBOutlet weak var artistText: UILabel!
    
    @IBOutlet weak var albumText: UILabel!

    @IBOutlet weak var songText: UILabel!

    var song: Song?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.albumImage.image = UIImage(named: (song?.picture)!)
        self.artistText.text = song?.artist
        self.albumText.text = song?.album
        self.songText.text = song?.name
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.

    }
    

}
