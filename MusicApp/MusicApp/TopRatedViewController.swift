//
//  TopRatedViewController.swift
//  MusicApp
//
//  Created by Student on 3/20/17.
//  Copyright © 2017 Mateus Luna. All rights reserved.
//

import UIKit

class TopRatedViewController: UIViewController {
    
    var song: Song?
    
    @IBOutlet weak var artistImage: UIImageView!
    
    @IBOutlet weak var artistName: UILabel!

    @IBOutlet weak var artistDetails: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.song = Song(name: "Chop Suey", artist: "System of a Down", album: "Toxicity", picture: "Toxicity")
        
        self.song?.shortDetails = "System of a Down is an Armenian-American heavy metal band from Glendale, California, formed in 1994."
        
        self.song?.longDetails = "System of a Down is an Armenian-American heavy metal band from Glendale, California, formed in 1994.The band currently consists of Serj Tankian (lead vocals, keyboards), Daron Malakian (vocals, guitar), Shavo Odadjian (bass, backing vocals) and John Dolmayan (drums). The band achieved commercial success with the release of five studio albums, three of which debuted at number one on the Billboard 200. System of a Down has been nominated for four Grammy Awards, and their song B.Y.O.B. won the Best Hard Rock Performance of 2006. The group briefly disbanded in August 2006 and reunited in November 2010, embarking on a tour for the following three years. System of a Down has sold over 40 million records worldwide."
        
        
        
        if let song = self.song {
            self.artistImage.image = UIImage(named: song.picture)
            self.artistName.text = song.artist
            self.artistDetails.text = self.song?.shortDetails
            
        }
        

        

        // Do any additional setup after loading the view.
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
        
        if segue.identifier == "seeMore" {
            if let artistView = segue.destination as? ArtistDetailViewController {
                artistView.song = self.song
                
            }
        }
    }
    

}
