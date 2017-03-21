//
//  Song.swift
//  MusicApp
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 Mateus Luna. All rights reserved.
//

import Foundation

class Song {
    let name: String
    let artist: String
    let album: String
    let picture: String
    var shortDetails: String
    var longDetails: String
    
    init(name: String, artist: String, album: String, picture: String) {
        self.name = name
        self.artist = artist
        self.album = album
        self.picture = picture
        self.shortDetails = artist
        self.longDetails = ""
    }
    
}

class SongDAO {
    
    static func getSongs() -> [Song] {
        return [
            Song(name: "Numb", artist: "Linkin Park", album: "Meteora", picture: "Meteora"),
            Song(name: "Faint", artist: "Linkin Park", album: "Meteora", picture: "Meteora"),
            Song(name: "Before I forget", artist: "Slipknot", album: "The Subliminal Verses", picture: "The Subliminal Verses"),
            Song(name: "Vermilion pt.2", artist: "Slipknot", album: "The Subliminal Verses", picture: "The Subliminal Verses"),
            Song(name: "Chop Suey", artist: "System of a Down", album: "Toxicity", picture: "Toxicity"),
            Song(name: "Toxicity", artist: "System of a Down", album: "Toxicity", picture: "Toxicity"),
            Song(name: "Aerials", artist: "System of a Down", album: "Toxicity", picture: "Toxicity"),
            Song(name: "Vredesbyrd", artist: "Dimmu Borgir", album: "Death Cult Armageddon", picture: "Death Cult Armageddon"),
            Song(name: "Best of you", artist: "Foo Fighters", album: "In Your Honor", picture: "In Your Honor"),
            Song(name: "The Unforgiven", artist: "Metallica", album: "Metallica", picture: "Metallica")
            
        ]
    }
    
}
