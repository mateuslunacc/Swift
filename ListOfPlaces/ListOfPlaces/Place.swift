//
//  Place.swift
//  ListOfPlaces
//
//  Created by Student on 3/16/17.
//  Copyright © 2017 Mateus Luna. All rights reserved.
//

import Foundation

class Place {
    let name: String
    let picture: String
    
    init(name: String, picture: String){
        self.name = name
        self.picture = picture
    }
    
}

class PlaceDAO {
    
    static func getPlaces () -> [Place] {
        return [
            Place(name: "Demon`s house", picture: "Church"),
            Place(name: "Amazonas", picture: "River"),
            Place(name: "I wish I could live here", picture: "House" ),
            Place(name: "I`d jump there", picture: "Waterfall"),
            Place(name: "Best place for a picnic", picture: "Gardensr")
        ]
    }
}
